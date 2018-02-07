 #![feature(pointer_methods)]
extern crate protobuf;
mod protos;
mod blockchain;
mod base_token;
mod test;
mod base_token_test;
pub use protos::base_token_service::*;
pub fn main() {}
