use blockchain::*;
pub struct BaseToken<T: BlockChain>  {
    pub blockchain: T
}

impl <B> BaseToken<B> where B: BlockChain {
    pub fn _initialize(&self) {
        self.blockchain.write_u64(self.blockchain.sender(), 100);
    }

    pub fn balance_of(&self, address: Vec<u8>) -> u64 {
        self.blockchain.read_u64(address)
    }
}
