use alloc::vec::Vec;
use error::{self, Error};

use blockchain::*;
pub struct HumanReadableNameRegistry<T: BlockChain>  {
    pub blockchain: T
}

impl <B> HumanReadableNameRegistry<B> where B: BlockChain {
    pub fn register(&self) -> Result<(), Error> {
        let sender = self.blockchain.sender();
        let (prefix, suffix) = sender.split_at(4);
        if self.blockchain.read(prefix.to_vec()) == vec![] {
            self.blockchain.write(prefix.to_vec(), suffix.to_vec());
            Ok(())
        } else {
            Err(error::ALREADY_REGISTERED)
        }
    }

    pub fn lookup(&self, mut prefix: Vec<u8>) -> Result<Vec<u8>, Error> {
        let mut suffix = self.blockchain.read(prefix.to_vec());

        if suffix == vec![] {
            Err(error::PREFIX_NOT_FOUND)
        } else {
            prefix.append(&mut suffix);
            Ok(prefix)
        }
    }
}
