#![no_std]
#![feature(
    alloc,
    rustc_private,
    panic_implementation,
    alloc_error_handler,
    use_extern_macros,
    proc_macro_mod,
    proc_macro_gen,
)]
#[cfg(test)]
#[macro_use]
extern crate std;
#[macro_use]
extern crate alloc;
extern crate wasm_rpc;
extern crate wasm_rpc_macros;
extern crate wee_alloc;
extern crate cbor_no_std;
#[cfg(test)]
extern crate ellipticoin_test_framework;
#[cfg(not(test))]
extern crate ellipticoin;
#[cfg(test)]
extern crate mock_ellipticoin as ellipticoin;


#[cfg(not(test))]
#[global_allocator]
static ALLOC: wee_alloc::WeeAlloc = wee_alloc::WeeAlloc::INIT;

mod errors;

#[cfg(not(test))]
use self::wasm_rpc_macros::export;

#[cfg(not(test))]
#[export]
mod user_contracts;

#[cfg(test)]
mod user_contracts;
#[cfg(test)]
mod user_contracts_test;
