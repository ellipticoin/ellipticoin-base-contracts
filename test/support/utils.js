const protobuf = require('protobufjs');
const {elipticoin: {Address}} = require('./base_token.pb.js');

function hexToAddress(hex) {
  return Address.encode(Address.create({bytes: hexToBytes(hex)})).finish();
}
function hexToBytes(hex) {
    for (var bytes = [], c = 0; c < hex.length; c += 2)
    bytes.push(parseInt(hex.substr(c, 2), 16));
    return bytes;
}

// Convert a byte array to a hex string
function bytesToHex(bytes) {
    for (var hex = [], i = 0; i < bytes.length; i++) {
        hex.push((bytes[i] >>> 4).toString(16));
        hex.push((bytes[i] & 0xF).toString(16));
    }
    return hex.join("");
}

module.exports = {
  hexToBytes,
  hexToAddress,
  bytesToHex,
}
