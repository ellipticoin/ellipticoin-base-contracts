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
const SENDER = hexToBytes("0000000000000000000000000000000000000001");
const RECEIVER = hexToBytes("0000000000000000000000000000000000000002");
const ERROR_INSUFFICIENT_FUNDS = 1;
const INITIALIZE_ARGS = [100];
const ERROR_CODES = {
  INSUFFIENT_FUNDS: 1,
};

global.storage = {};

describe('human readable name registration', function() {
  const exports = {
    rust_begin_unwind: () => null,
    sender: () => {
      return wasm.writePointer(hexToBytes("0000000000000000000000000000000000000001"));
    },
    read: (keyPtr) => {
      this.storage = this.storage || {};
      var key = wasm.readPointer(keyPtr);
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
    code = await readFile("../target/wasm32-unknown-unknown/release/human_readable_name_registry.wasm");
    await wasm.load(code);
  });

  describe('register', function() {
    it("should succeed if the name isn't already registered", async function() {
      await wasm.call('register', SENDER);
    });

    it("should fail if you try to register an address with the same prefix", async function() {
      storage = {};
      wasm = new FakeBlockchain({
          exports: {
            ...exports,
            read: (keyPtr) => {
              this.storage = this.storage || {};
              var key = wasm.readPointer(keyPtr);
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
              this.storage[key] = value;
            },
          }
      });
      code = await readFile("../target/wasm32-unknown-unknown/release/human_readable_name_registry.wasm");
      await wasm.load(code);
      await wasm.call('register', SENDER);
      assert.throws(
        () => wasm.call('register', RECEIVER),
        /That name has already been registered/,
      );
    });
  });

  describe("lookup", function() {
    it("returns registered addresses", async function() {
      storage = {};
      wasm = new FakeBlockchain({
          exports: {
            ...exports,
            read: (keyPtr) => {
              this.storage = this.storage || {};
              var key = wasm.readPointer(keyPtr);
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
              this.storage[key] = value;
            },
          }
      });
      code = await readFile("../target/wasm32-unknown-unknown/release/human_readable_name_registry.wasm");
      await wasm.load(code);
      await wasm.call('register', SENDER);
      var address = await wasm.call('lookup', SENDER.slice(0, 4));
      assert(Buffer.compare(address, SENDER) == 0);
    })

    it("fails if you lookup an address that hasn't been registered", async function() {
      assert.throws(
        () => wasm.call('lookup', RECEIVER),
        /No address with that prefix is registered/,
      );
    })
  });
});
