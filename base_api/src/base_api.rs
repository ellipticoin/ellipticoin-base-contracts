use ellipticoin::*;

pub struct BaseApi<T: BlockChain>  {
    pub blockchain: T
}

impl <B> BaseApi<B> where B: BlockChain {
    pub fn block_hash(&self) -> Vec<u8> {
        self.blockchain.block_hash()
    }

    pub fn sender(&self) -> Vec<u8> {
        self.blockchain.sender()
    }
}
