#[cfg(not(test))]
use alloc::vec::Vec;
use error::{Error};
use alloc::slice::SliceConcatExt;
use alloc::String;

use blockchain::BlockChain;
pub struct ContractRegistry<T: BlockChain>  {
    pub blockchain: T
}

impl <B> ContractRegistry<B> where B: BlockChain {
    pub fn deploy(&self, contract_name: String, code: Vec<u8>) -> Result<(), Error> {
        let sender = self.blockchain.sender();
        let address = [&sender[..], &contract_name.as_bytes()[..]].concat();

        self.blockchain.write(address, code);
        Ok(())
    }

    pub fn call(&self, account: Vec<u8>, contract_name: String, method: String, params: u32) -> Vec<u8> {
        let address = [&account[..], &contract_name.as_bytes()[..]].concat();
        let code = self.blockchain.read(address.clone());
        self.blockchain.call(code, method, params, address)
    }
}
