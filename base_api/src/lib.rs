extern crate cbor_lite;
extern crate ellipticoin;
extern crate wasm_rpc;
mod base_api;

#[cfg(test)]
mod base_token_test;
#[cfg(not(test))]
pub mod entry_point;
