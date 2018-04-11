#![feature(
    alloc,
    slice_concat_ext,
    allocator_api,
    core_intrinsics,
    global_allocator,
    lang_items,
    )]
#![cfg_attr(not(test), no_std)]
extern crate wee_alloc;
#[global_allocator]
static ALLOC: wee_alloc::WeeAlloc = wee_alloc::WeeAlloc::INIT;

extern crate alloc;
extern crate rlibc;
extern crate cbor_no_std;
extern crate wasm_rpc;
extern crate ellipticoin;

mod base_token;

#[cfg(test)]
mod base_token_test;

pub mod error;
#[cfg(not(test))]
pub mod memory;
#[cfg(not(test))]
pub mod ellipticoin_entry_point;

pub fn main() {}
#[cfg(not(test))]
#[lang = "panic_fmt"]
extern "C" fn panic_fmt(
    _args: ::core::fmt::Arguments,
    _file: &'static str,
    _line: u32
) -> ! {
    use core::intrinsics;
    unsafe {
        intrinsics::abort();
    }
}
