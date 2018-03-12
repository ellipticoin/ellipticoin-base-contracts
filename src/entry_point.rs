#![cfg_attr(all(feature = "no_std", not(test)), no_std)]
extern crate rlibc;
extern crate wee_alloc;
use alloc::btree_map::BTreeMap;
use alloc::vec::Vec;
use alloc::string::ToString;

#[cfg(test)]
use std::mem::transmute;
#[cfg(not(test))]
use core::mem::transmute;
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
use blockchain::BlockChain;
#[cfg(test)]
use test::fake_blockchain::FakeBlockChain;
#[cfg(not(test))]
use elipticoin_blockchain::ElipitcoinBlockchain;
use base_token::{BaseToken};
use error::{self, Error};

#[cfg(test)]
extern crate rustc_serialize as serialize;
use cbor_no_std::{from_bytes, to_bytes, Value};

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

// pub struct FakeBlockChain {
// }
//
// impl BlockChain for FakeBlockChain {
//     fn read_u32(&self) -> u32 {
//         19
//     }
// }
//
// pub trait BlockChain {
//     fn read_u32(&self) -> u32;
// }
//
// pub struct BaseToken<T: BlockChain>  {
//     pub blockchain: T
// }

pub trait Params {
    fn at(&self, n: usize) -> Value;
}

impl Params for Value {
    fn at(&self, n: usize) -> Value {
        self.as_array().unwrap().to_vec().iter().nth(n).unwrap().clone()
    }
}

pub trait WASMRpc {
    fn call(&self, method: &str, params: Value) -> Pointer;
}

fn error(code: u32) -> Value {
    let mut error_code = BTreeMap::new();
    error_code.insert("code".into(), Value::Int(code));

    let mut error_map = BTreeMap::new();
    error_map.insert("error".into(), Value::Map(error_code));
    Value::Map(error_map)
}

// TODO Generate this automatically with a #[derive(WASMRpc)]
impl<B> WASMRpc for BaseToken<B> where B: BlockChain {
    fn call(&self, method: &str, params: Value) -> Pointer {
        let result = match method {
            "balance_of" => self.balance_of(params.at(0).as_bytes().unwrap().to_vec()),
            "constructor" => self.constructor(params.at(0).as_int().unwrap() as u64),
            "transfer" => self.transfer(params.at(0).as_bytes().unwrap().to_vec(), params.at(1).as_int().unwrap() as u64),
            _ => Ok(Value::Null),
        };

        match result {
            Ok(Value::Null) => vec![].to_wasm_bytes(),
            Ok(value) => to_bytes(value).to_wasm_bytes(),
            Err(_) =>   {
                to_bytes(error(1)).to_wasm_bytes()
                // vec![].to_wasm_bytes()
            }
        }
    }
}

fn to_return_value(result: Result<Value, Error>) -> Pointer {
    let error_code = match result {
        Err(error) => error.code,
        _ => 0,
    };

    let mut return_value = match result {
        Ok(Value::Null) => vec![],
        Ok(value) => to_bytes(value),
        Err(error) => to_bytes(Value::String(error.message.into())),
    };

    let mut error_code_bytes = unsafe {
        transmute::<u32 ,[u8; 4]>(error_code).to_vec()
    };

    error_code_bytes.append(&mut return_value);
    error_code_bytes.to_wasm_bytes()
}

// TODO Generate these functions automatically with a [Procedural Macro](https://doc.rust-lang.org/book/first-edition/procedural-macros.html)

#[no_mangle]
pub fn constructor(balance: u32) -> Pointer {
    let rpc =  BaseToken { blockchain: ElipitcoinBlockchain {} };
    let result = rpc.constructor(balance as u64);
    to_return_value(result)
}

#[no_mangle]
pub fn balance_of(address_ptr: Pointer) -> Pointer {
    let rpc =  BaseToken { blockchain: ElipitcoinBlockchain {} };
    let address = from_bytes(address_ptr.from_wasm_bytes());
    let result = rpc.balance_of(address.as_bytes().unwrap().to_vec());
    to_return_value(result)
}

#[no_mangle]
pub fn transfer(receiver_address_ptr: Pointer, amount: u32) -> Pointer {
    let rpc =  BaseToken { blockchain: ElipitcoinBlockchain {} };
    let receiver_address = from_bytes(receiver_address_ptr.from_wasm_bytes());
    let result = rpc.transfer(receiver_address.as_bytes().unwrap().to_vec(), amount as u64);
    to_return_value(result)
}

// TODO Generate this automatically with a macro like
// wasm_rpc_expose!(BaseToken { blockchain: ... })
#[no_mangle]
pub fn call(payload_ptr: Pointer) -> Pointer {
    let rpc =  BaseToken {
        // blockchain: FakeBlockChain {..Default::default()}
        blockchain: ElipitcoinBlockchain {}
    };
    let bytes = payload_ptr.from_wasm_bytes();
    let tmp_payload = from_bytes(bytes);
    let payload = tmp_payload.as_map().unwrap();
    let ref method = payload.get("method".into()).unwrap().as_string().unwrap();
    let params = payload.get("params".into()).unwrap().clone();
    rpc.call(method, params)
}


#[cfg(test)]
mod tests {
    use super::*;
    use entry_point::serialize::hex::FromHex;

    #[test] #[ignore]
    fn balance_of() {
        let bytes: Vec<u8> = "a2666d6574686f64687472616e7366657266706172616d73825400000000000000000000000000000000000000021878".from_hex().unwrap();
        assert_eq!(vec![0], call(bytes.to_wasm_bytes()).from_wasm_bytes());
    }
}
