#![no_std]
#![feature(
    alloc,
    panic_implementation,
    alloc_error_handler,
    use_extern_macros,
    proc_macro_mod,
    proc_macro_gen,
)]
#[macro_use]
extern crate alloc;
extern crate ellipticoin;
extern crate wasm_rpc;
extern crate wasm_rpc_macros;
extern crate wee_alloc;

#[global_allocator]
static ALLOC: wee_alloc::WeeAlloc = wee_alloc::WeeAlloc::INIT;
use core::panic::PanicInfo;

#[panic_implementation]
fn panic(_info: &PanicInfo) -> ! {
    loop {}
}

#[alloc_error_handler]
fn out_of_memory(_: ::core::alloc::Layout) -> ! {
    loop {}
}

mod error;

use self::wasm_rpc_macros::export;

#[export]
mod leader_election;
