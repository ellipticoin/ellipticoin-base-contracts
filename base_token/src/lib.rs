#![no_std]
#![feature(
    alloc,
    use_extern_macros,
    alloc_error_handler,
    proc_macro_mod,
    core_intrinsics,
    proc_macro_gen,
    panic_implementation,
)]
extern crate alloc;
extern crate wasm_rpc;
extern crate wasm_rpc_macros;
extern crate wee_alloc;

#[global_allocator]
static ALLOC: wee_alloc::WeeAlloc = wee_alloc::WeeAlloc::INIT;
use core::panic::PanicInfo;
#[panic_implementation]
fn panic(_info: &PanicInfo) -> ! {
    loop { }
}
#[alloc_error_handler]
fn out_of_memory(_: ::core::alloc::Layout) -> ! {
    loop { }
}

mod ellipticoin;
use self::wasm_rpc_macros::export;

#[export]
mod base_token;
