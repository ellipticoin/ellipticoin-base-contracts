Elipticoin Base Token Contract
==============================

This is the base token contract for Elipticoin. The base token is used to pay
Blacksmith nodes to execute transactions. The contract's storage is a mapping of
addresses (public keys) to balances. Balances are stored as `uint64`s in
thousandths of Elipticoins.

The compile target is a [WASM
file](https://github.com/WebAssembly/design/blob/master/BinaryEncoding.md) that
can be run in the Elipticoin Virtual Machine or any other WebAssembly
interpreter.

WebAssembly only supports integer and slice types so we need a way to pass in input parameters as binary data. Elipticoin contracts use [Protocol
Buffers](https://developers.google.com/protocol-buffers/) for encoding input
parameters. This gives us the added benefit of being able to define contract
interfaces as [GRPC](https://grpc.io/) services!

The base token contract is special in that it's deployed at the genesis block of
Elipticoin. Otherwise, if the token contract didn't exist, there'd be no way to
pay to deploy it!


Running tests
=============

To run the unit tests run:

    RUST_TEST_THREADS=1 cargo test

To run the integration tests run:

    npm install
    cargo +nightly rustc --target wasm32-unknown-unknown --lib -- -O  --crate-type=cdylib
    npm test

The integration tests test against the WebAssembly output:
`target/wasm32-unknown-unknown/debug/base_token.wasm`. I originally wrote the
integration tests in JavaScript so I could iterate quicker. They
could probably be rewritten in Rust and run the wasm files with
[wasmi](https://github.com/pepyakin/wasmi).
