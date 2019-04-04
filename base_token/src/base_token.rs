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

    pub fn approve(spender: Vec<u8>, amount: u64) {
        set(Key::Allowences, [sender(), spender].concat(), amount);
    }

    pub fn transfer_from(from: Vec<u8>, to: Vec<u8>, amount: u64) -> Result<Value, Error> {
        let allowance = get(Key::Allowences, [from.clone(), sender()].concat());

        if allowance >= amount {
            update_allowance(from.clone(), sender(), amount);
            update_balances(from, to, amount);
            Ok(Value::Null)
        } else {
            Err(error::INSUFFICIENT_FUNDS)
        }
    }

    pub fn transfer(to: Vec<u8>, amount: u64) -> Result<Value, Error> {
        if get(Key::Balances, sender()) >= amount {
            update_balances(sender(), to, amount);
            Ok(Value::Null)
        } else {
            Err(error::INSUFFICIENT_FUNDS)
        }
    }

    fn update_allowance(from: Vec<u8>, to: Vec<u8>, amount: u64) {
        let allowance: u64 = get(Key::Allowences, [from.clone(), to.clone()].concat());
        set(Key::Allowences, [from, to].concat(), allowance - amount);
    }

    fn update_balances(from: Vec<u8>, to: Vec<u8>, amount: u64) {
        let sender_balance = get(Key::Balances, from.clone());
        let receiver_balance = get(Key::Balances, to.clone());
        set(Key::Balances, from, sender_balance - amount);
        set(Key::Balances, to, receiver_balance + amount);
    }

    fn set(namespace: Key, key: Vec<u8>, value: u64) {
        set_memory([vec![namespace as u8], key].concat(), value);
    }

    fn get(namespace: Key, key: Vec<u8>) -> u64 {
        get_memory([vec![namespace as u8], key].concat())
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

    pub fn allowance(owner: Vec<u8>, spender: Vec<u8>) -> u64 {
        get(Key::Allowences, [owner, spender].concat())
    }
}
