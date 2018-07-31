const FakeBlockchain = require('./support/fake-blockchain');
const assert = require('assert');
const _ = require('lodash');
const UNKNOWN_ADDRESS = new Buffer("0000000000000000000000000000000000000000", "hex");
const SENDER = new Buffer("0000000000000000000000000000000000000001", "hex");
const RECEIVER = new Buffer("0000000000000000000000000000000000000002", "hex");
const blockHash = new Buffer("9e501681e9fdc91780301f12e8cb71d3cef69a4e134348534b500f908fd67e8", "hex")

describe('BaseAPI', function() {
  var blockchain;

  beforeEach(async () => {
    blockchain = new FakeBlockchain({
      defaultSender: SENDER,
      blockHash,
    });

    await blockchain.loadFile("../target/wasm32-unknown-unknown/release/base_api.wasm");
  });

  afterEach(() => blockchain.reset());

  describe('block_hash', function() {
    it('should return the current blockhash', async function() {
      var result = await blockchain.call('block_hash');

      assert.equal(result.toString("hex"), blockHash.toString("hex"));
    });
  });
});
