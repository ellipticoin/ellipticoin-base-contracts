#![cfg_attr(all(feature = "no_std", not(test)), no_std)]
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
extern crate rustc_serialize as serialize;
use cbor_no_std::{from_bytes, Value};

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

impl Params for Value {
    fn at(&mut self, n: usize) -> Value {
        if let Value::Array(ref array) = *self {
            array.iter().nth(n).expect("Parameter error").clone()
        } else {
            unreachable!()
        }
    }
}

impl<B> BaseToken<B> where B: BlockChain {
    pub fn balance_of(&self, mut params: Value) -> Pointer {
        let _address = params.at(0);
        self.blockchain.read_u32().to_wasm_bytes()
    }
}

pub trait WASMRpc {
    fn call(&self, method: &str, params: Value) -> Pointer;
}

// TODO Generate this automatically with a #[derive(WASMRpc)]
impl<B> WASMRpc for BaseToken<B> where B: BlockChain {
    fn call(&self, method: &str, params: Value) -> Pointer {
        match method {
            "balance_of" => self.balance_of(params),
            _ => vec![].to_wasm_bytes(),
        }
    }
}

// // TODO Generate this automatically with a macro like
// // wasm_expose!(BaseToken, FakeBlockChain)
#[no_mangle]
pub fn call(payload_ptr: Pointer) -> Pointer {
    let fake_blockchain =  FakeBlockChain {};
    let base_token =  BaseToken { blockchain: fake_blockchain };
    let tmp_payload = from_bytes(payload_ptr.from_wasm_bytes());
    let payload = tmp_payload.as_map().unwrap();
    let ref method = payload.get(&Value::String("method".into())).unwrap().as_string().unwrap();
    let params = payload.get(&Value::String("params".into())).unwrap().clone();
    base_token.call(method, params)
}


#[cfg(test)]
mod tests {
    use super::*;
    use entry_point::serialize::hex::FromHex;

    #[test]
    fn balance_of() {
        // {method:"balance_of", params: [new Buffer([1,2,3])]}
        let bytes: Vec<u8> = "a2666d6574686f646a62616c616e63655f6f6666706172616d738143010203".from_hex().unwrap();
        assert_eq!(vec![19], call(bytes.to_wasm_bytes()).from_wasm_bytes());
    }
}
