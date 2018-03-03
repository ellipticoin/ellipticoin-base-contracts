#[cfg(not(test))]
use alloc::vec::Vec;

#[cfg(not(test))]
use alloc::string::String;

// use std::ffi::{CString};
// use std::mem;
use blockchain::*;
use blockchain::{Valueable};
#[cfg(test)]
use std::mem::transmute;
#[cfg(not(test))]
use core::mem::transmute;

extern {
    fn sender() -> *const u8;
    fn read(key: *const u8) -> *const u8;
    fn write(key: *const u8, value: *const u8);
    fn throw(message: *const u8);
}

pub struct ElipitcoinBlockchain {}

impl BlockChain for ElipitcoinBlockchain {
    fn read_u32(&self, key: Vec<u8>) -> u32 {
      0
      // unsafe {
      //   from_pointer_with_length(
      //     read(key.to_pointer_with_length())
      //   ).value()
      // }
    }

    fn read_u64(&self, key: Vec<u8>) -> u64 {
      0
      // unsafe {
      //   from_pointer_with_length(
      //     read(key.to_pointer_with_length())
      //   ).value()
      // }
    }

    fn sender(&self) -> Vec<u8> {
        vec![]
        // from_pointer_with_length(unsafe{sender()})
    }


    fn write_u64(&self, key: Vec<u8>, value: u64) {
        // let value_bytes: Vec<u8> = Valuable::from_u64(value);
        //
        // unsafe {
        //     write(
        //         key.to_vec().to_pointer_with_length(),
        //         value_bytes.to_vec().to_pointer_with_length(),
        //     );
        // }
    }

    fn throw(&mut self, message: &str) {
        // let value = CString::new(message).unwrap();
        // let length_slice: [u8; LENGTH_BYTE_COUNT] = unsafe{ transmute(message.len() as u32) };
        // let value_and_length = [&length_slice[..], value.as_bytes()].concat();;
        // let value_and_length_ptr = value_and_length.as_ptr();
        // mem::forget(value_and_length);
        // unsafe{throw(value_and_length_ptr)};
    }
}
