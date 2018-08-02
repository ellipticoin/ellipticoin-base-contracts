const FakeBlockchain = require("./support/fake-blockchain");
const assert = require("assert");
const _ = require("lodash");
const UNKNOWN_ADDRESS = Buffer.from("0000000000000000000000000000000000000000", "hex");
const SENDER = Buffer.from("0000000000000000000000000000000000000001", "hex");
const RECEIVER = Buffer.from("0000000000000000000000000000000000000002", "hex");
const PRIVATE_KEY = "421b15261849f1b6aa6fc5b0758f7da22b31e74bed1e4a01dfac7bb8f931a4f";
const PUBLIC_KEY = "04b0dc9c483f4aaefcc62adec054f14ee2230c8d11fed03a89f6ebe8c9f20475fdd96be3d53108d2cebcc183e4c08f5f074bbc48f8fc928dcd0926b81e5113b35b";
const randomSeed = Buffer.alloc(32);
const ERROR_INSUFFICIENT_FUNDS = 1;
const ERROR_CODES = {
  INSUFFIENT_FUNDS: 1,
};
const {
  sha3,
  genKeyPair,
  sign,
} = require("./support/utils");

describe("LeaderElection", function() {
  var blockchain;

  beforeEach(async () => {
    blockchain = new FakeBlockchain({
      defaultSender: SENDER,
    });

    await blockchain.loadFile("./dist/leader_election.wasm");
  });

  afterEach(() => blockchain.reset());

  describe("constructor", function() {
    it("should set the random seed signature", async function() {
      await blockchain.call("constructor", randomSeed);
      var lastSignature = await blockchain.call("last_signature");

      assert.deepEqual(lastSignature, randomSeed);
    });
  });

  describe("submit_block", function() {
    it("set the latest block", async function() {
      await blockchain.call("constructor", randomSeed);
      let blockHash = sha3("");
      let privateKey = PRIVATE_KEY;

      var lastSignature = await blockchain.call("last_signature");
      let signature = sign(lastSignature, privateKey);

      await blockchain.call("submit_block", blockHash, ...signature, Buffer.from(PUBLIC_KEY, "hex"));

      assert.deepEqual(await blockchain.call("block_hash"), blockHash);
    });
  });
});
