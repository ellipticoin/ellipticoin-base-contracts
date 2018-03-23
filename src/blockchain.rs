use alloc::vec::Vec;
use alloc::String;

pub trait BlockChain {
    fn read(&self, key: Vec<u8>) -> Vec<u8>;
    fn read_u32(&self, key: Vec<u8>) -> u32;
    fn read_u64(&self, key: Vec<u8>) -> u64;
    fn write(&self, key: Vec<u8>, value: Vec<u8>);
    fn write_u64(&self, key: Vec<u8>, value: u64);
    fn sender(&self) -> Vec<u8>;
    fn call(&self, code: Vec<u8>, method: String, params: u32, storage_context: Vec<u8>) -> Vec<u8>;
}

