use std::mem::transmute;
pub trait Valuable {}

impl Valuable {
    pub fn from_u64(value: u64) -> Vec<u8>{
        let bytes: [u8; 8] = unsafe { transmute(value.to_le()) };
        bytes.to_vec()
    }
}

pub trait Valueable<T> {
    fn value(&self) -> T;
}

impl Valueable<u64> for Vec<u8> {
    fn value(&self) -> u64 {
        let mut slice: [u8; 8] = [0; 8];
        slice.copy_from_slice(&self[..]);
        unsafe {
          transmute::<[u8; 8], u64>(slice)
        }
    }
}

impl Valueable<u32> for Vec<u8> {
    fn value(&self) -> u32 {
        let mut slice: [u8; 4] = [0; 4];
        slice.copy_from_slice(&self[..]);
        unsafe {
          transmute::<[u8; 4], u32>(slice)
        }
    }
}

pub trait BlockChain {
    fn read_u32(&self, Vec<u8>) -> u32;
    fn read_u64(&self, Vec<u8>) -> u64;
    fn write_u64(&self, Vec<u8>, u64);
    fn sender(&self) -> Vec<u8>;
    fn throw(&mut self, msg: &str);
}

