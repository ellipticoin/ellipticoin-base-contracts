#![no_std]

#![feature(
    alloc,
    slice_concat_ext,
    allocator_api,
    core_intrinsics,
    global_allocator,
    lang_items,
    // pointer_methods,
    // rustc_private,
    // match_default_bindings,
    )]
// #![cfg_attr(not(test), no_std)]
extern crate wee_alloc;
#[global_allocator]
static ALLOC: wee_alloc::WeeAlloc = wee_alloc::WeeAlloc::INIT;

#[macro_use] extern crate alloc;
extern crate rlibc;
extern crate cbor_no_std;
#[cfg(test)]
extern crate core;

mod blockchain;
mod wasm_rpc;
mod base_token;
#[cfg(not(test))]
mod human_readable_name_registry;
#[cfg(not(test))]
mod contract_registry;

#[cfg(ellipticoin)]
mod ellipticoin_blockchain;
#[cfg(test)]
mod test;
#[cfg(test)]
mod base_token_test;
pub mod memory;
pub mod error;
#[cfg(ethereum)]
pub mod ethereum_entry_point;
#[cfg(ellipticoin)]
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
