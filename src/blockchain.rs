use alloc::vec::Vec;
use alloc::String;
use wasm_rpc::*;

pub trait BlockChain {
    fn read(&self, key: Vec<u8>) -> Vec<u8>;
    fn write(&self, key: Vec<u8>, value: Vec<u8>);
    fn sender(&self) -> Vec<u8>;
    fn call(&self, code: Vec<u8>, method: String, params: Vec<u8>, storage_context: Vec<u8>) -> Vec<u8>;

    fn read_u32(&self, key: Vec<u8>) -> u32 {
        self.read(key).value()
    }

    fn read_u64(&self, key: Vec<u8>) -> u64 {
        self.read(key).value()
    }

    fn write_u64(&self, key: Vec<u8>, value: u64) {
        self.write(key, FromBytes::from_u64(value));
    }
}
