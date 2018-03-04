#[cfg(not(test))]
use alloc::vec::Vec;
use cbor_no_std::{Value};

use blockchain::*;
pub struct BaseToken<T: BlockChain>  {
    pub blockchain: T
}

impl <B> BaseToken<B> where B: BlockChain {
    pub fn constructor(&self, initial_supply: u64) -> Result<Value, &'static str> {
        self.write(self.blockchain.sender(), initial_supply);
        Ok(Value::Null)
    }

    pub fn balance_of(&self, address: Vec<u8>) -> Result<Value, &'static str> {
        Ok(Value::Int(self.read(&address) as u32))
    }

    pub fn transfer(&mut self, receiver_address: Vec<u8>, amount: u64)  -> Result<(), &'static str> {
        let sender_balance = self.read(&self.sender());
        let receiver_balance = self.read(&receiver_address);

        if sender_balance > amount {
            self.write(self.sender(), sender_balance - amount);
            self.write(receiver_address, receiver_balance + amount);
            Ok(())
        } else {
            Err("insufficient funds")
        }
    }

    fn sender(&self) -> Vec<u8> {
        self.blockchain.sender()
    }

    fn read(&self, key: &Vec<u8>) -> u64 {
        self.blockchain.read_u64(key.to_vec())
    }

    fn write(&self, key: Vec<u8>, value: u64) {
        self.blockchain.write_u64(key, value)
    }
}
