use ellipticoin::{
    block_number, block_winner, error, error::Error, export, get_memory, sender, set_memory, Value,
};
pub use wasm_rpc::{Bytes, Dereferenceable, FromBytes, Referenceable, ToBytes};
use issuance;

enum Namespace {
    Balances,
    Allowences,
    Mintings,
}

#[export]
mod base_token {
    pub fn constructor(initial_supply: u64) {
        set(Namespace::Balances, sender(), initial_supply)
    }

    pub fn approve(spender: Vec<u8>, amount: u64) {
        set(Namespace::Allowences, [sender(), spender].concat(), amount);
    }

    pub fn transfer_from(from: Vec<u8>, to: Vec<u8>, amount: u64) -> Result<Value, Error> {
        let allowance: u64 = get(Namespace::Allowences, [from.clone(), sender()].concat());

        if allowance >= amount {
            debit_allowance(from.clone(), sender(), amount);
            debit(from, amount);
            credit(to, amount);
            Ok(Value::Null)
        } else {
            Err(error::INSUFFICIENT_FUNDS)
        }
    }

    pub fn transfer(to: Vec<u8>, amount: u64) -> Result<Value, Error> {
        if get::<_, u64>(Namespace::Balances, sender()) >= amount {
            debit(sender(), amount);
            credit(to, amount);
            Ok(Value::Null)
        } else {
            Err(error::INSUFFICIENT_FUNDS)
        }
    }

    pub fn mint() -> Result<Value, Error> {
        if !block_minted(block_number()) {
            credit(block_winner(), block_reward(block_number()));
            mark_block_as_minted(block_number());
            Ok(Value::Null)
        } else {
            Err(error::INSUFFICIENT_FUNDS)
        }
    }

    fn block_minted(block_number: u64) -> bool {
        get(Namespace::Mintings, block_number)
    }

    fn block_reward(block_number: u64) -> u64 {
        issuance::block_reward(block_number)
    }

    fn debit_allowance(from: Vec<u8>, to: Vec<u8>, amount: u64) {
        let allowance: u64 = get(Namespace::Allowences, [from.clone(), to.clone()].concat());
        set(Namespace::Allowences, [from, to].concat(), allowance - amount);
    }

    fn mark_block_as_minted(block_number: u64) {
        set(Namespace::Mintings, block_number, true);
    }

    fn credit(address: Vec<u8>, amount: u64) {
        let balance: u64 = get(Namespace::Balances, address.clone());
        set(Namespace::Balances, address, balance + amount);
    }

    fn debit(address: Vec<u8>, amount: u64) {
        let balance: u64 = get(Namespace::Balances, address.clone());
        set(Namespace::Balances, address, balance - amount);
    }

    fn set<K: ToBytes, V: ToBytes>(namespace: Namespace, key: K, value: V) {
        set_memory([vec![namespace as u8], key.to_bytes()].concat(), value);
    }

    fn get<K: ToBytes, V: FromBytes>(namespace: Namespace, key: K) -> V {
        get_memory([vec![namespace as u8], key.to_bytes()].concat())
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use ellipticoin::{set_block_winner, set_sender};
    use ellipticoin_test_framework::{alice, bob, carol};

    #[test]
    fn test_transfer() {
        set_sender(alice());
        constructor(100);
        transfer(bob(), 20).unwrap();
        let alices_balance = balance_of(alice());
        assert_eq!(alices_balance, 80);
        let bobs_balance = balance_of(bob());
        assert_eq!(bobs_balance, 20);
    }

    #[test]
    fn test_transfer_insufficient_funds() {
        set_sender(alice());
        constructor(100);
        assert!(transfer(bob(), 120).is_err());
    }

    #[test]
    fn test_transfer_from() {
        set_sender(alice());
        constructor(100);
        approve(bob(), 50);
        set_sender(bob());
        transfer_from(alice(), carol(), 20).unwrap();
        let alices_balance = balance_of(alice());
        assert_eq!(alices_balance, 80);
        let bobs_allowance = allowance(alice(), bob());
        assert_eq!(bobs_allowance, 30);
        let carols_balance = balance_of(carol());
        assert_eq!(carols_balance, 20);
    }

    #[test]
    fn test_mint() {
        set_sender(alice());
        set_block_winner(alice());
        constructor(100);
        mint().expect("failed to mint");
        let alices_balance = balance_of(alice());
        assert_eq!(alices_balance, 640100);
    }

    #[test]
    fn test_block_cannot_be_minted_twice() {
        set_sender(alice());
        set_block_winner(alice());
        constructor(100);
        mint().expect("failed to mint");
        assert!(mint().is_err());
    }

    pub fn balance_of(address: Vec<u8>) -> u64 {
        get(Namespace::Balances, address)
    }

    pub fn allowance(owner: Vec<u8>, spender: Vec<u8>) -> u64 {
        get(Namespace::Allowences, [owner, spender].concat())
    }
}
