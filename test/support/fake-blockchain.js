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
      __udivti3: () => null,
      __multi3: () => null,
      _call: (codePtr, methodPtr, paramsPtr, storageContextPtr) => {
        const decoder = new StringDecoder('utf8');
        var code = this.readPointer(codePtr);
        var method = decoder.write(new Buffer(this.readPointer(methodPtr)));
        var params = cbor.decode(new Buffer(this.readPointer(paramsPtr)));
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
      const params = ${JSON.stringify(params)};
      const method = "${method}";

      async function run() {
        const wasm = new SimpleWasm({});
        await wasm.load(code);
        const result = wasm.call(method, ...params);
        process.stdout.write(cbor.encode(result));
      };
      run();`;

    return execFileSync('node', ['-e', runWasmCode]);
  }
}

module.exports = FakeBlockchain;
