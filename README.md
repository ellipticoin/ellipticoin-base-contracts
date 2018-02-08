Elipticoin Base Token Contract
==============================

This is the base token contract for Elipticoin. The base token is used to pay
Blacksmith nodes to execute transactions. The contract's storage is a mapping of
addresses (public keys) to balances. Balances are stored as `uint64`s in thousandths of Elipticoins.

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
