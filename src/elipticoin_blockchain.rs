use alloc::vec::Vec;
use alloc::String;
use blockchain::BlockChain;
use wasm_rpc::*;

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
        read(key.as_pointer()).as_raw_bytes()
      }
    }

    fn read_u32(&self, key: Vec<u8>) -> u32 {
      unsafe {
        read(key.as_pointer()).as_raw_bytes().value()
      }
    }

    fn read_u64(&self, key: Vec<u8>) -> u64 {
      unsafe {
        read(key.as_pointer()).as_raw_bytes().value()
      }
    }

    fn sender(&self) -> Vec<u8> {
        unsafe{
            sender().as_raw_bytes()
        }
    }

    fn write(&self, key: Vec<u8>, value: Vec<u8>) {
        unsafe {
            write(
                key.as_pointer(),
                value.as_pointer(),
            );
        }
    }

    fn write_u64(&self, key: Vec<u8>, value: u64) {
        unsafe {
            write(
                key.as_pointer(),
                FromBytes::from_u64(value).as_pointer(),
            );
        }
    }

    fn call(&self, code: Vec<u8>, method: String, params: u32, storage_context: Vec<u8>) -> Vec<u8> {
        unsafe {
            _call(
                code.as_pointer(),
                method.as_pointer(),
                params,
                storage_context.as_pointer()
            ).as_raw_bytes()
        }
    }
}
