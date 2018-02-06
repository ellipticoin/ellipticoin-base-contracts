pub struct WASMBlockChain;

pub trait BlockChain {
    fn read(&self, Vec<u8>) -> Vec<u8>;
    fn write(&self, Vec<u8>, Vec<u8>);
}
impl BlockChain for WASMBlockChain {
    fn read(&self, key: Vec<u8>) -> Vec<u8> {
        vec![101]
    }
    fn write(&self, key: Vec<u8>, value: Vec<u8>) {
    }
}
const SENDER: [u8; 20] = [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1 ];
pub struct BaseToken<T: BlockChain>  {
    pub blockchain: T
}

impl <T> BaseToken<T> where T: BlockChain {
    pub fn _init(&mut self) {
        self.blockchain.write(SENDER.to_vec(), vec![99 as u8]);
    }

    pub fn balance_of(&mut self, address: Vec<u8>) -> u8 {
        let v: Vec<u8> = self.blockchain.read(address);
        v[0]
    }
}
