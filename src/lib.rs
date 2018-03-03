#![feature(
    alloc,
    allocator_api,
    core_intrinsics,
    global_allocator,
    lang_items,
    pointer_methods,
    rustc_private,
    )]
#![cfg_attr(not(test), no_std)]
extern crate wee_alloc;
#[global_allocator]
static ALLOC: wee_alloc::WeeAlloc = wee_alloc::WeeAlloc::INIT;

#[macro_use] extern crate alloc;
extern crate rlibc;

mod blockchain;
mod base_token;
#[cfg(test)]
mod test;
#[cfg(test)]
mod base_token_test;
#[cfg(test)]
extern crate serde_json;
#[cfg(test)]
extern crate serde_cbor;
#[cfg(test)]
extern crate serde_transcode;
pub mod memory;
pub mod entry_point;
// pub use memory::{alloc}
mod elipticoin_blockchain;
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
