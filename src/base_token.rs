use blockchain::*;
use blockchain::Valuable;
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

    pub fn transfer(&mut self, receiver_address: Vec<u8>, amount: u64) {
        let sender_balance = self.read(&self.sender());
        let receiver_balance = self.read(&receiver_address);

        if sender_balance > amount {
            self.write(self.sender(), sender_balance - amount);
            self.write(receiver_address, receiver_balance + amount);
        } else {
            self.blockchain.throw("insufficient funds");
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
