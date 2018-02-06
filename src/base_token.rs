extern crate num;

use self::num::Num;
use std::mem::transmute;

pub struct WASMBlockChain;

pub trait BlockChain {
    fn read_u64(&self, Vec<u8>) -> u64;
    fn write(&self, Vec<u8>, Vec<u8>);
}
impl BlockChain for WASMBlockChain {
    fn read_u64(&self, key: Vec<u8>) -> u64 {
        let mut slice: [u8; 8] = [0; 8];
        slice.copy_from_slice(&vec![0 as u8, 0, 0, 0][..]);
        unsafe {
          transmute::<[u8; 8], u64>(slice)
        }
    }
    fn write(&self, key: Vec<u8>, value: Vec<u8>) {
    }
}
const SENDER: [u8; 20] = [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1 ];
pub struct BaseToken<T: BlockChain>  {
    pub blockchain: T
}

impl <B> BaseToken<B> where B: BlockChain {
    pub fn _init(&mut self) {
        self.blockchain.write(SENDER.to_vec(), vec![99 as u8,0,0,0,0,0,0, 0]);
    }

    pub fn balance_of(&mut self, address: Vec<u8>) -> u64 {
        self.blockchain.read_u64(address)
    }
}
