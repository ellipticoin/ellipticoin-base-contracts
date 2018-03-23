#![feature(
    alloc,
    slice_concat_ext,
    allocator_api,
    core_intrinsics,
    global_allocator,
    lang_items,
    pointer_methods,
    rustc_private,
    match_default_bindings,
    )]
#![cfg_attr(not(test), no_std)]
extern crate wee_alloc;
#[global_allocator]
static ALLOC: wee_alloc::WeeAlloc = wee_alloc::WeeAlloc::INIT;

#[macro_use] extern crate alloc;
extern crate rlibc;
extern crate cbor_no_std;

mod blockchain;
mod base_token;
mod human_readable_name_registry;
mod contract_registry;

#[cfg(not(test))]
mod elipticoin_blockchain;
#[cfg(test)]
mod test;
#[cfg(test)]
mod base_token_test;
pub mod memory;
pub mod error;
pub mod entry_point;
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
