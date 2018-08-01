#![no_std]
#![feature(
    alloc,
    panic_implementation,
    alloc_error_handler,
    use_extern_macros,
    proc_macro_mod,
    proc_macro_gen,
)]
extern crate alloc;
extern crate wasm_rpc;
extern crate wasm_rpc_macros;
#[cfg(not(test))]
extern crate ellipticoin;
#[cfg(test)]
extern crate ellipticoin_test_framework as ellipticoin;

#[cfg(not(test))]
extern crate wee_alloc;

#[cfg(not(test))]
#[global_allocator]
static ALLOC: wee_alloc::WeeAlloc = wee_alloc::WeeAlloc::INIT;
#[cfg(not(test))]
use core::panic::PanicInfo;

#[cfg(not(test))]
#[panic_implementation]
fn panic(_info: &PanicInfo) -> ! {
    loop {}
}

#[cfg(not(test))]
#[alloc_error_handler]
fn out_of_memory(_: ::core::alloc::Layout) -> ! {
    loop {}
}


mod error;

#[cfg(not(test))]
use self::wasm_rpc_macros::export;


#[cfg(not(test))]
#[export]
mod base_token;
#[cfg(test)]
mod base_token;

#[cfg(test)]
mod base_token_test;
