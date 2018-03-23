const cbor = require("cbor");
const Promise = require("bluebird");
const readFile = Promise.promisify(require("fs").readFile);
var exec = Promise.promisify(require('child_process').exec);
const FakeBlockchain = require('./support/fake-blockchain');
const assert = require('assert');
const _ = require('lodash');
const {
  hexToAddress,
  hexToBytes,
  bytesToHex,
  fromBytesInt32,
  toBytesInt32,
} = require('./support/utils.js');
const UNKNOWN_ADDRESS = hexToBytes("0000000000000000000000000000000000000000");
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
        return wasm.writePointer(new Uint8Array([]));
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
    await wasm.call('constructor', 100);
  });

  describe('constructor', function() {
    it('should initalize the sender with 100 tokens', async function() {
      var result = await wasm.call('balance_of', SENDER);

      assert.equal(result, 100);
    });
  });

  describe('balance_of', function() {
    it('should return your balance', async function() {
      var result = await wasm.call('balance_of', SENDER);

      assert.equal(result, 100);
    });

    it('should return 0 for unknown addresses', async function() {
      var result = await wasm.call('balance_of', UNKNOWN_ADDRESS);

      assert.equal(result, 0);
    });
  });

  describe('transfer', function() {
    it('decreases the senders balance', async function() {
      await wasm.call('transfer', RECEIVER, 20);

      var result = await wasm.call('balance_of', SENDER);

      assert.equal(result, 80);
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
      await wasm.call('constructor', 100);
      await wasm.call('transfer', RECEIVER, 20);

      var result = await wasm.call('balance_of', RECEIVER);

      assert.equal(result, 20);
    });

    it('returns an error if you try to send more tokens than you have', async function() {
      assert.throws(
        () => wasm.call("transfer", RECEIVER, 120),
        /insufficient funds/,
      );
    });
  });
});
