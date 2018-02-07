use blockchain::*;
pub struct BaseToken<T: BlockChain>  {
    pub blockchain: T
}

impl <B> BaseToken<B> where B: BlockChain {
    pub fn _init(&mut self) {
        self.blockchain.write_u64(self.blockchain.sender(), 99);
    }

    pub fn balance_of(&mut self, address: Vec<u8>) -> u64 {
        self.blockchain.read_u64(address)
    }
}
