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
  });

  it("should be callable after it's deployed", async function() {
    var echoContract = await readFile("test/support/echo.wasm");
    await wasm.call("deploy", "echo", echoContract);
    var result = await wasm.call("call", SENDER, "echo", "echo", 7);
    assert.equal(result.toString(), 7);
  });
});

