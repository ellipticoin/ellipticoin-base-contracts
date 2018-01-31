const Promise = require("bluebird");
const readFile = Promise.promisify(require("fs").readFile);
var exec = Promise.promisify(require('child_process').exec);
const FakeBlockchain = require('./support/fake-blockchain');
const assert = require('assert');
const {hexToAddress, bytesToHex} = require('./support/utils.js');
const SENDER = hexToAddress("0x0000000000000000000000000000000000000001");
const RECEIVER = hexToAddress("0x0000000000000000000000000000000000000002");
const ERROR_INSUFFICIENT_FUNDS = 1;

global.storage = {};

describe('token', function() {
  const exports = {
    sender: () => SENDER,
    read: (key) => {
      return storage[key]
    },
    write: (key, value) => {
      storage[key] = value
    },
    throw: console.log,
  };

  var wasm;

  before(async function () {
    this.timeout(3000);
    var result = await exec('mkdir -p _build && rustc +nightly --target wasm32-unknown-unknown -O --crate-type=cdylib src/token.rs -o _build/token.big.wasm && wasm-gc _build/token.big.wasm _build/token.wasm');
    console.log("--- Running make ---")
    console.log(result);
    console.log("--------------------")
    return null;
  });

  beforeEach(async () => {
    this.timeout(3000);
    storage = {};
    wasm = new FakeBlockchain({exports});
    code = await readFile("./_build/token.wasm");
    await wasm.load(code);
    // await wasm.call("_initialize")
  });

  describe('_initalize', function() {
    it('should initalize the sender with 100 tokens', async function() {
      assert.equal(await wasm.call("_initalize", [1]), 3);
    });
  });

  describe.only('get_balance', function() {
    it('should return your balance', async function() {
      assert.equal(await wasm.call(
        'balance_of', SENDER,
      ), 100);
    });
  });

  describe('transfer', function() {
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
