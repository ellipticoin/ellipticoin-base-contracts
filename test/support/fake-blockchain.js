const SimpleWasm = require('simple-wasm');
const {elipticoin: {Call}} = require('./base_token.pb.js');
const {bytesToHex} = require("./utils");

class FakeBlockchain extends SimpleWasm {
  call (method, args) {
    let call = Call.encode(Call.create({
      functionName: method,
      arguments: args,
    })).finish();


    // console.log(call.toString('hex'))


    return super.call("entry_point", call, call.length);
  }
}

module.exports = FakeBlockchain;
