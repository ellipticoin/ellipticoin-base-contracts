use ellipticoin::{error, error::Error, export, get_memory, sender, set_memory, Value};

enum Key {
    Balances,
    Allowences,
}

#[export]
mod base_token {
    pub fn constructor(initial_supply: u64) {
        set(Key::Balances, sender(), initial_supply)
    }

    pub fn balance_of(address: Vec<u8>) -> u64 {
        get(Key::Balances, address)
    }

    pub fn approve(spender: Vec<u8>, amount: u64) {
        set(Key::Allowences, [sender(), spender].concat(), amount);
    }

    pub fn allowance(owner: Vec<u8>, spender: Vec<u8>) -> u64 {
        get(Key::Allowences, [owner, spender].concat())
    }

    pub fn transfer_from(
        sender_address: Vec<u8>,
        receiver_address: Vec<u8>,
        amount: u64
    ) -> Result<Value, Error> {
        let allowance: u64 = get(Key::Allowences, [sender_address.clone(), sender()].concat());

        if allowance >= amount {
            update_allowance(sender_address.clone(), sender(), amount);
            update_balances(sender_address, receiver_address, amount);
            Ok(Value::Null)
        } else {
            Err(error::INSUFFICIENT_FUNDS)
        }
    }

    pub fn transfer(receiver_address: Vec<u8>, amount: u64) -> Result<Value, Error> {
        if get(Key::Balances, sender()) >= amount {
            update_balances(sender(), receiver_address, amount);
            Ok(Value::Null)
        } else {
            Err(error::INSUFFICIENT_FUNDS)
        }
    }

    fn update_allowance(sender_address: Vec<u8>, receiver_address: Vec<u8>, amount: u64) {
        let allowance: u64 = get(Key::Allowences, [sender_address.clone(), receiver_address.clone()].concat());
        set(Key::Allowences, [sender_address, receiver_address].concat(), allowance - amount);
    }

    fn update_balances(sender_address: Vec<u8>, receiver_address: Vec<u8>, amount: u64) {
        let sender_balance: u64 = get(Key::Balances, sender_address.clone());
        let receiver_balance: u64 = get(Key::Balances, receiver_address.clone());
        set(Key::Balances, sender_address, sender_balance - amount);
        set(Key::Balances, receiver_address, receiver_balance + amount);
    }
    fn set(key: Key, address: Vec<u8>, value: u64) {
        set_memory([vec![key as u8], address].concat(), value);
    }

    fn get(key: Key, address: Vec<u8>) -> u64 {
        get_memory([vec![key as u8], address].concat())
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use ellipticoin::set_sender;
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
    fn test_balance_of() {
        set_sender(alice());
        constructor(100);
        let balance = balance_of(alice());
        assert_eq!(balance, 100);
    }

    #[test]
    fn test_approve() {
        set_sender(alice());
        approve(bob(), 100);
        let bobs_allowance = allowance(alice(), bob());
        assert_eq!(bobs_allowance, 100);
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
    fn test_transfer_insufficient_funds() {
        set_sender(alice());
        constructor(100);
        assert!(transfer(bob(), 120).is_err());
    }

    pub fn balance_of(address: Vec<u8>) -> u64 {
        get(Key::Balances, address)
    }
}
