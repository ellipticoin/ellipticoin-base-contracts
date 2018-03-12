const cbor = require("cbor");
const Promise = require("bluebird");
const readFile = Promise.promisify(require("fs").readFile);
var exec = Promise.promisify(require('child_process').exec);
const FakeBlockchain = require('./support/fake-blockchain');
const assert = require('assert');
const _ = require('lodash');
const {elipticoin: {Address, Balance, TransferArgs, InitializeArgs}} = require('./support/base_token.pb.js');
const {
  hexToAddress,
  hexToBytes,
  bytesToHex,
  fromBytesInt32,
  toBytesInt32,
} = require('./support/utils.js');
const SENDER = hexToBytes("0000000000000000000000000000000000000001");
const RECEIVER = hexToBytes("0000000000000000000000000000000000000002");
const ERROR_INSUFFICIENT_FUNDS = 1;
const INITIALIZE_ARGS = [100];
const ERROR_CODES = {
  INSUFFIENT_FUNDS: 1,
};

global.storage = {};

describe('token', function() {
  const exports = {
    rust_begin_unwind: () => null,
    sender: () => {
      return wasm.writePointer(hexToBytes("0000000000000000000000000000000000000001"));
    },
    read: (keyPtr) => {
      this.storage = this.storage || {};
      var key = wasm.readPointer(keyPtr);
      // console.log(key + " -> " + this.storage[key]);
      if(this.storage[key]) {
        return wasm.writePointer(this.storage[key]);
      } else {
        return wasm.writePointer(new Uint8Array([0,0,0,0,0,0,0,0]));
      }
    },
    write: (keyPtr, valuePtr) => {
      var key = wasm.readPointer(keyPtr);
      var value = wasm.readPointer(valuePtr);

      this.storage = this.storage || {};
      // console.log(key + " = " + value);
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
    var payloadPointer = wasm.writePointer(cbor.encode({
      method: "constructor",
      params: [100],
    }));

    await wasm.call("call", payloadPointer);
  });

  describe('constructor', function() {
    it('should initalize the sender with 100 tokens', async function() {
      var payloadPointer = wasm.writePointer(cbor.encode({
        method: "balance_of",
        params: [SENDER],
      }));
      var result = await wasm.call('call', payloadPointer);

      assert.equal(cbor.decode(new Buffer(wasm.readPointer(result))), 100);
    });
  });

  describe('balance_of', function() {
    it('should return your balance', async function() {
      var payloadPointer = wasm.writePointer(cbor.encode({
        method: "balance_of",
        params: [SENDER],
      }));
      var result = await wasm.call('call', payloadPointer);

      assert.equal(cbor.decode(new Buffer(wasm.readPointer(result))), 100);
    });
  });

  describe('transfer', function() {
    it('decreases the senders balance', async function() {
      var payloadPointer = wasm.writePointer(cbor.encode({
        method: "transfer",
        params: [RECEIVER, 20],
      }));
      result = await wasm.call('call', payloadPointer);

      payloadPointer = wasm.writePointer(cbor.encode({
        method: "balance_of",
        params: [SENDER],
      }));
      var result = await wasm.call("call", payloadPointer);

      assert.equal(cbor.decode(new Buffer(wasm.readPointer(result))), 80);
    });

    it('increases the receivers balance', async function() {
      storage = {};
      wasm = new FakeBlockchain({
          exports: {
            ...exports,
            read: (keyPtr) => {
              this.storage = this.storage || {};
              var key = wasm.readPointer(keyPtr);
              // console.log(key + " -> " + this.storage[key]);
              if(this.storage[key]) {
                return wasm.writePointer(this.storage[key]);
              } else {
                return wasm.writePointer(new Uint8Array([0,0,0,0,0,0,0,0]));
              }
            },
            write: (keyPtr, valuePtr) => {
              var key = wasm.readPointer(keyPtr);
              var value = wasm.readPointer(valuePtr);

              this.storage = this.storage || {};
              // console.log(key + " = " + value);
              this.storage[key] = value;
            },
          },
      });
      code = await readFile("target/wasm32-unknown-unknown/debug/base_token.wasm");
      await wasm.load(code);
      var payloadPointer = wasm.writePointer(cbor.encode({
        method: "constructor",
        params: [100],
      }));
      await wasm.call("call", payloadPointer);
      var payloadPointer = wasm.writePointer(cbor.encode({
        method: "transfer",
        params: [RECEIVER, 20],
      }));
      result = await wasm.call('call', payloadPointer);

      payloadPointer = wasm.writePointer(cbor.encode({
        method: "balance_of",
        params: [RECEIVER],
      }));
      var result = await wasm.call("call", payloadPointer);

      assert.equal(cbor.decode(new Buffer(wasm.readPointer(result))), 20);
    });

    it('returns an error if you try to send more tokens than you have', async function() {
      var payloadPointer = wasm.writePointer(cbor.encode({
        method: "transfer",
        params: [RECEIVER, 120],
      }));
      var result = await wasm.call('call', payloadPointer);
      assert(_.isEqual(cbor.decode(new Buffer(wasm.readPointer(result))), {
        error: {
          code: ERROR_CODES.INSUFFIENT_FUNDS,
        }
      }));
    });
  });
});
