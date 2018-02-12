const Promise = require("bluebird");
const readFile = Promise.promisify(require("fs").readFile);
var exec = Promise.promisify(require('child_process').exec);
const FakeBlockchain = require('./support/fake-blockchain');
const assert = require('assert');
const {elipticoin: {Address, Balance, TransferArgs, InitializeArgs}} = require('./support/base_token.pb.js');
const {hexToAddress, hexToBytes, bytesToHex} = require('./support/utils.js');
const SENDER = hexToAddress("0000000000000000000000000000000000000001");
const RECEIVER = hexToAddress("0000000000000000000000000000000000000002");
const ERROR_INSUFFICIENT_FUNDS = 1;
const INITIALIZE_ARGS = InitializeArgs.encode(InitializeArgs.create({
  initialSupply: 100,
})).finish();

global.storage = {};

describe('token', function() {
  const exports = {
    sender: () => {
      wasm.writePointer(hexToBytes("0000000000000000000000000000000000000001"));
      return 0;
    },
    read: (keyPtr) => {
      var key = wasm.readPointer(keyPtr);
      if(this.storage[key]) {
        wasm.writePointer(this.storage[key]);
      } else {
        wasm.writePointer(new Uint32Array([0,0,0,0,0,0,0,0]));
      }
      return 0;
    },
    write: (keyPtr, valuePtr) => {
      var key = wasm.readPointer(keyPtr);
      var value = wasm.readPointer(valuePtr);

      this.storage = this.storage || {};
      this.storage[key] = value;
    },
    throw: console.log,
  };

  var wasm;

  beforeEach(async () => {
    this.timeout(10000);
    storage = {};
    wasm = new FakeBlockchain({
        exports: exports,
    });
    code = await readFile("target/wasm32-unknown-unknown/debug/base_token.wasm");
    await wasm.load(code);
      wasm.writePointer(INITIALIZE_ARGS);
    await wasm.call("_initialize")
  });

  describe('_initalize', function() {
    it('should initalize the sender with 100 tokens', async function() {
      wasm.writePointer(INITIALIZE_ARGS);
      await wasm.call("_initialize");
      wasm.writePointer(SENDER);
      var result = await wasm.call('balance_of', 0);
      var decodedBalance = Balance.decode(new Buffer(wasm.readPointer(result)));
      assert.equal(decodedBalance.amount.toNumber(), 100);
    });
  });

  describe('balance_of', function() {
    it('should return your balance', async function() {
      wasm.writePointer(SENDER);

      var result = await wasm.call('balance_of', 0);
      var decodedBalance = Balance.decode(new Buffer(wasm.readPointer(result)));
      assert.equal(decodedBalance.amount.toNumber(), 100);
    });
  });

  describe('transfer', function() {
    it('decreases the senders balance', async function() {
      var transferArgs = TransferArgs.encode(TransferArgs.create({
        receiverAddress: hexToBytes("0000000000000000000000000000000000000002"),
        amount: 20,
      })).finish();
      var t = TransferArgs.decode(transferArgs)

      wasm.writePointer(transferArgs);
      await wasm.call("transfer", 0);

      wasm.writePointer(SENDER);
      var result = await wasm.call('balance_of', 0);
      var decodedBalance = Balance.decode(new Buffer(wasm.readPointer(result)));
      assert.equal(decodedBalance.amount.toNumber(), 80);
    });

    it('increases the receivers balance', async function() {
      storage = {};
      wasm = new FakeBlockchain({
        exports:{
          ...exports,
          read: (keyPtr) => {
            var key = wasm.readPointer(keyPtr);
            if(this.storage[key]) {
              wasm.writePointer(this.storage[key]);
            } else {
              wasm.writePointer(new Uint32Array([0,0,0,0,0,0,0,0]));
            }
            return 0;
          },
          write: (keyPtr, valuePtr) => {
            var key = wasm.readPointer(keyPtr);
            var value = wasm.readPointer(valuePtr);

            this.storage = this.storage || {};
            this.storage[key] = value;
          },
        },
      });
      code = await readFile("target/wasm32-unknown-unknown/debug/base_token.wasm");
      await wasm.load(code);
      wasm.writePointer(INITIALIZE_ARGS);
      await wasm.call("_initialize")
      var transferArgs = TransferArgs.encode(TransferArgs.create({
        receiverAddress: hexToBytes("0000000000000000000000000000000000000002"),
        amount: 20,
      })).finish();
      var t = TransferArgs.decode(transferArgs)

      wasm.writePointer(transferArgs);
      await wasm.call("transfer", 0);

      wasm.writePointer(RECEIVER);
      var result = await wasm.call('balance_of', 0);
      var decodedBalance = Balance.decode(new Buffer(wasm.readPointer(result)));
      assert.equal(decodedBalance.amount.toNumber(), 20);
    });

    it('throws if you try to send more tokens than you have', async function() {
      storage = {};
      wasm = new FakeBlockchain({
        exports:{
          ...exports,
          read: (keyPtr) => {
            var key = wasm.readPointer(keyPtr);
            if(this.storage[key]) {
              wasm.writePointer(this.storage[key]);
            } else {
              wasm.writePointer(new Uint32Array([0,0,0,0,0,0,0,0]));
            }
            return 0;
          },
          write: (keyPtr, valuePtr) => {
            var key = wasm.readPointer(keyPtr);
            var value = wasm.readPointer(valuePtr);

            this.storage = this.storage || {};
            this.storage[key] = value;
          },
          throw: (msgPointer) => {
            var message = wasm.readString(msgPointer);
            assert.equal(message, "insufficient funds");
          }
        },
      });
      code = await readFile("target/wasm32-unknown-unknown/debug/base_token.wasm");
      await wasm.load(code);
      wasm.writePointer(INITIALIZE_ARGS);
      await wasm.call("_initialize")
      var transferArgs = TransferArgs.encode(TransferArgs.create({
        receiverAddress: hexToBytes("0000000000000000000000000000000000000002"),
        amount: 120,
      })).finish();
      var t = TransferArgs.decode(transferArgs)

      wasm.writePointer(transferArgs);
      await wasm.call("transfer", 0);
    });
  });
});
