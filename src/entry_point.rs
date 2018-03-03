#![cfg_attr(all(feature = "no_std", not(test)), no_std)]
#![feature(underscore_lifetimes, core_slice_ext)]
#![feature(global_allocator, alloc, core_intrinsics, lang_items, allocator_api)]
extern crate rlibc;
extern crate wee_alloc;
use alloc::vec::Vec;
#[cfg(not(test))]
use core::mem;
#[cfg(not(test))]
use core::slice;
#[cfg(not(test))]
use core::str;
#[cfg(test)]
use std::mem;
#[cfg(test)]
use std::slice;
#[cfg(test)]
use std::str;

#[cfg(test)]
use serde_json;
#[cfg(test)]
use serde_cbor;
#[cfg(test)]
use serde_transcode;
#[cfg(test)]
use std::io;
#[cfg(test)]
extern crate rustc_serialize as serialize;
#[cfg(test)]
use self::serialize::hex::FromHex;


#[cfg(test)]
use self::serde_cbor::{Value as CborValue};


extern crate cbor_no_std;
use self::cbor_no_std::{from_bytes, Value};

pub const LENGTH_BYTE_COUNT: usize = 4;

type Pointer = *const u8;

fn u32_to_u8_vec(x:u32) -> Vec<u8> {
    let b1 : u8 = ((x >> 24) & 0xff) as u8;
    let b2 : u8 = ((x >> 16) & 0xff) as u8;
    let b3 : u8 = ((x >> 8) & 0xff) as u8;
    let b4 : u8 = (x & 0xff) as u8;
    vec![b4, b3, b2, b1]
}

fn u8_vec_to_u32(x: Vec<u8>) -> u32 {
    (x[3] as u32) << 24 |
        ((x[2] as u32) & 0xff) << 16 |
        ((x[1] as u32) & 0xff) << 8 |
        ((x[0] as u32) & 0xff)
}

pub unsafe trait FromWASMBytes {
    fn from_wasm_bytes(&self) -> Vec<u8>;
}

unsafe impl FromWASMBytes for Pointer {
    fn from_wasm_bytes(&self) -> Vec<u8> {
        let length_slice = unsafe { slice::from_raw_parts(self.offset(0) as *const u8, LENGTH_BYTE_COUNT as usize) };
        let length = u8_vec_to_u32(length_slice.to_vec());

        unsafe {
            slice::from_raw_parts(self.offset(LENGTH_BYTE_COUNT as isize) as *const u8, length as usize).to_vec()
        }
    }
}

pub unsafe trait ToWASMBytes {
    fn to_wasm_bytes(&self) -> Pointer;
}

unsafe impl ToWASMBytes for Vec<u8> {
    fn to_wasm_bytes(&self) -> Pointer {
        let mut value = self.clone();
        let mut value_and_length = u32_to_u8_vec(value.len() as u32);
        value_and_length.append(&mut value);
        let value_and_length_ptr = value_and_length.as_ptr();
        mem::forget(value_and_length);
        value_and_length_ptr
    }
}

pub struct FakeBlockChain {
}

impl BlockChain for FakeBlockChain {
    fn read_u32(&self) -> Vec<u8> {
        vec![19]
    }
}

pub trait BlockChain {
    fn read_u32(&self) -> Vec<u8>;
}

pub struct BaseToken<T: BlockChain>  {
    pub blockchain: T
}

pub trait Params {
    fn at(&mut self, n: usize) -> Value;
}

impl Params for Pointer {
    fn at(&mut self, n: usize) -> Value {
        if let Value::Array(array) = from_bytes(self.from_wasm_bytes()) {
            array.iter().nth(n).expect("Parameter error").clone()
        } else {
            unreachable!()
        }
    }
}

impl<B> BaseToken<B> where B: BlockChain {
    pub fn balance_of(&self, mut params: Pointer) -> Pointer {
        let address = params.at(0);
        self.blockchain.read_u32().to_wasm_bytes()
    }
}

pub trait WASMRpc {
    fn call(&self, method: &str, params: Pointer) -> Pointer;
}

// TODO Generate this automatically with a #[derive(WASMRpc)]
impl<B> WASMRpc for BaseToken<B> where B: BlockChain {
    fn call(&self, method: &str, params: Pointer) -> Pointer {
        unsafe{
            match method {
                "balance_of" => self.balance_of(params),
                _ => vec![].to_wasm_bytes(),
            }
        }
    }
}

// // TODO Generate this automatically with a macro like
// // wasm_expose!(BaseToken, FakeBlockChain)
#[no_mangle]
pub fn call(payload: Pointer) -> Pointer {
    let fake_blockchain =  FakeBlockChain {};
    let mut base_token =  BaseToken { blockchain: fake_blockchain };
    // TODO get method name from payload
    base_token.call(&"balance_of", payload)
}


#[cfg(test)]
mod tests {
    use super::*;
    use entry_point::serialize::hex::FromHex;

    #[test]
    fn balance_of() {
        let bytes: Vec<u8> = "8143010203".from_hex().unwrap();
        assert_eq!(vec![19], call(bytes.to_wasm_bytes()).from_wasm_bytes());
    }
}
