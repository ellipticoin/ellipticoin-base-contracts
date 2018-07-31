use error::{self, Error};
use ellipticoin::*;

pub struct LeaderElection<T: BlockChain>  {
    pub blockchain: T
}

impl <B> LeaderElection<B> where B: BlockChain {
    pub fn constructor(&self, random_seed: Vec<u8>) {
        self.blockchain.write("last_signature".as_bytes().to_vec(), random_seed);
    }

    pub fn submit_block(&self, block_hash: Vec<u8>, v: u8, r: Vec<u8>, s: Vec<u8>, winner: Vec<u8>) -> Result<(), Error>{
        let last_signature = self.blockchain.read("last_signature".as_bytes().to_vec());
        if(self.blockchain.secp256k1_recover(last_signature.clone(), v, r, s) == winner){
            self.blockchain.write("block_hash".as_bytes().to_vec(), block_hash);
            Ok(())
        } else {
            Err(error::INVALID_SIGNATURE)
        }
    }
    pub fn block_hash(&self) -> Vec<u8> {
        self.blockchain.read("block_hash".as_bytes().to_vec())
    }
    
    pub fn last_signature(&self) -> Vec<u8> {
        self.blockchain.read("last_signature".as_bytes().to_vec())
        // vec![1,2,3]
    }
}
