use blockchain::*;
use blockchain::{Valueable};
use protos::helpers::*;

extern {
    fn read(key: *const u32) -> *const u32;
    fn sender() -> *const u32;
    fn write(key: *const u32, value: *const u32);
}

pub struct ElipitcoinBlockchain {
}

impl BlockChain for ElipitcoinBlockchain {
    fn read_u32(&self, key: Vec<u8>) -> u32 {
      unsafe {
        from_pointer_with_length(
          read(key.to_vec_u32().to_pointer_with_length())
        ).to_vec_u8().value()
      }
    }

    fn read_u64(&self, key: Vec<u8>) -> u64 {
      unsafe {
        from_pointer_with_length(
          read(key.to_vec_u32().to_pointer_with_length())
        ).to_vec_u8().value()
      }
    }

    fn sender(&self) -> Vec<u8> {
        from_pointer_with_length(unsafe{sender()}).to_vec_u8()
    }


    fn write_u64(&self, key: Vec<u8>, value: u64) {
        let value_bytes: Vec<u8> = Valuable::from_u64(value);

        unsafe {
            write(
                key.to_vec_u32().to_pointer_with_length(),
                value_bytes.to_vec_u32().to_pointer_with_length(),
            );
        }
    }
}
