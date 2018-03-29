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
const { execFileSync } = require('child_process');
const SENDER = hexToBytes("0000000000000000000000000000000000000001");

describe('deploying contract', function() {
  const exports = {
    rust_begin_unwind: () => null,
    // call: (codePtr, params, storageContextPtr) => {
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
    code = await readFile("target/wasm32-unknown-unknown/release/base_token.wasm");
    await wasm.load(code);
  });

  it("should be callable after it's deployed", async function() {
    var adderContract = await readFile("test/support/adder.wasm");
    await wasm.call("deploy", "Adder", adderContract);
    var result = await wasm.call("call", SENDER, "Adder", "add", [1, 2]);
    assert.equal(result, 3);
  });
});

