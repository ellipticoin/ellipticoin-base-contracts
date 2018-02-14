 #![feature(pointer_methods)]
extern crate protobuf;
mod protos;
mod blockchain;
mod base_token;
#[cfg(test)]
mod test;
#[cfg(test)]
mod base_token_test;
mod elipticoin_blockchain;
pub use protos::base_token_service::*;
pub use protos::helpers::{alloc, dealloc};
pub fn main() {}
