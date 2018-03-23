const SimpleWasm = require('simple-wasm');
const { execFileSync } = require('child_process');
const cbor = require('cbor');
const { StringDecoder } = require('string_decoder');

const {
  bytesToHex,
  hexToBytes,
} = require("./utils");

class FakeBlockchain extends SimpleWasm {
  constructor(params) {
    params.exports = {
      ...params.exports,
      _call: (codePtr, methodPtr, params, storageContextPtr) => {
        const decoder = new StringDecoder('utf8');
        var code = this.readPointer(codePtr);
        var method = decoder.write(this.readPointer(methodPtr));
        var storageContext = this.readPointer(storageContextPtr);
        return this.writePointer(this._call(code, method, params, storageContext));
      },
    }
    super(params);
  }

  _call(code, method, params, storageContext) {
    var runWasmCode = `
      const cbor = require('cbor');
      const SimpleWasm = require('/Users/masonf/src/simple-wasm');
      const code = new Buffer("${new Buffer(code).toString("hex")}", "hex");
      const storageContext = new Buffer("${new Buffer(storageContext).toString("hex")}", "hex");
      const params = ${params};
      const method = "${method}";

      async function run() {
        const wasm = new SimpleWasm({});
        await wasm.load(code);
        const result = wasm.call("echo", params);
        process.stdout.write(cbor.encode(result));
      };
      run();`;

    return execFileSync('node', ['-e', runWasmCode]);
  }
}

module.exports = FakeBlockchain;
