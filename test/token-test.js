const Promise = require("bluebird");
const readFile = Promise.promisify(require("fs").readFile);
var exec = Promise.promisify(require('child_process').exec);
const FakeBlockchain = require('./support/fake-blockchain');
const assert = require('assert');
const {elipticoin: {Address, Balance}} = require('./support/base_token.pb.js');
const {hexToAddress, hexToBytes, bytesToHex} = require('./support/utils.js');
const SENDER = hexToAddress("0000000000000000000000000000000000000001");
const RECEIVER = hexToAddress("0000000000000000000000000000000000000002");
const ERROR_INSUFFICIENT_FUNDS = 1;

global.storage = {};

describe('token', function() {
  const exports = {
    sender: () => SENDER,
    read: function (key) {
      return this.storage[key];
    },
    write: function (key, value) {
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
      exports:{
        ...exports,
        sender: () => {
          wasm.writePointer(hexToBytes("0000000000000000000000000000000000000001"));
          return 0;
        },
        read: (keyPtr) => {
          var key = wasm.readPointer(keyPtr);
          wasm.writePointer(this.storage[key]);
          return 0;
        },
        write: (keyPtr, valuePtr) => {
          var key = wasm.readPointer(keyPtr);
          var value = wasm.readPointer(valuePtr);

          this.storage = this.storage || {};
          this.storage[key] = value;
        }
      }
    });
    code = await readFile("target/wasm32-unknown-unknown/debug/base_token.wasm");
    await wasm.load(code);
    await wasm.call("_initialize")
  });

  describe('_initalize', function() {
    it('should initalize the sender with 100 tokens', async function() {
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

  describe.skip('transfer', function() {
    it('decreases the senders balance', async function() {
      await wasm.call("transfer", [RECEIVER, 20]);
      assert.equal(await wasm.call("get_balance", [SENDER]), 80);
    });

    it('increases the receivers balance', async function() {
      await wasm.call("transfer", [RECEIVER, 20]);
      assert.equal(await wasm.call("get_balance", [RECEIVER]), 20);
    });

    it('throws if you try to send more tokens than you have', async function() {
      wasm = new FakeBlockchain({
        exports: {
          ...exports,
          throw: (error) => {
            assert.equal(error, ERROR_INSUFFICIENT_FUNDS);
          }
        }
      });
      code = await readFile("./_build/token.wasm");
      await wasm.load(code);
      await await wasm.call("_initialize")
      return await wasm.call("transfer", RECEIVER, 200);
    });
  });
});
