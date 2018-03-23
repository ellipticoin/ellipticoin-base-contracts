#[cfg(not(test))]
use alloc::vec::Vec;

use blockchain::*;
use blockchain::{Valueable};
use entry_point::ToWASMBytes;
use entry_point::FromWASMBytes;

extern {
    fn sender() -> *const u8;
    fn read(key: *const u8) -> *const u8;
    fn _call(code: *const u8, method: *const u8, params: u32, storage_context: *const u8) -> *const u8;
    fn write(key: *const u8, value: *const u8);
}

pub struct ElipitcoinBlockchain {}

impl BlockChain for ElipitcoinBlockchain {
    fn read(&self, key: Vec<u8>) -> Vec<u8> {
      unsafe {
        read(key.to_wasm_bytes()).from_wasm_bytes()
      }
    }

    fn read_u32(&self, key: Vec<u8>) -> u32 {
      unsafe {
        read(key.to_wasm_bytes()).from_wasm_bytes().value()
      }
    }

    fn read_u64(&self, key: Vec<u8>) -> u64 {
      unsafe {
        read(key.to_wasm_bytes()).from_wasm_bytes().value()
      }
    }

    fn sender(&self) -> Vec<u8> {
        unsafe{sender().from_wasm_bytes()}
    }

    fn write(&self, key: Vec<u8>, value: Vec<u8>) {
        unsafe {
            write(
                key.to_vec().to_wasm_bytes(),
                value.to_vec().to_wasm_bytes(),
            );
        }
    }

    fn write_u64(&self, key: Vec<u8>, value: u64) {
        let value_bytes: Vec<u8> = Valuable::from_u64(value);

        unsafe {
            write(
                key.to_vec().to_wasm_bytes(),
                value_bytes.to_vec().to_wasm_bytes(),
            );
        }
    }

    fn call(&self, code: Vec<u8>, method: &str, params: u32, storage_context: Vec<u8>) -> Vec<u8> {
        unsafe {
            _call(
                code.to_wasm_bytes(),
                method.as_bytes().to_vec().to_wasm_bytes(),
                params,
                storage_context.to_wasm_bytes()
            ).from_wasm_bytes()
        }
    }
}
