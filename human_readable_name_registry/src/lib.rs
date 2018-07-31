extern crate cbor_lite;
extern crate wasm_rpc;
extern crate ellipticoin;

pub mod error;

#[cfg(not(test))]
mod human_readable_name_registry;
#[cfg(not(test))]
pub mod ellipticoin_entry_point;
