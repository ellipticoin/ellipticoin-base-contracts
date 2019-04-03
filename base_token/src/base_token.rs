use ellipticoin::{
    error,
    sender,
    get_memory,
    set_memory,
    error::Error,
    Value,
    export,
};

#[export]
mod base_token {
    pub fn constructor(initial_supply: u64) {
        set_memory(sender(), initial_supply);
    }

    pub fn balance_of(address: Vec<u8>) -> u64 {
        get_memory(address)
    }

    pub fn transfer(receiver_address: Vec<u8>, amount: u64) -> Result<Value, Error> {
        let sender_balance: u64 = get_memory(sender());
        let receiver_balance: u64 = get_memory(receiver_address.clone());
        if sender_balance >= amount {
            set_memory(sender(), sender_balance - amount);
            set_memory(receiver_address, receiver_balance + amount);
            Ok(Value::Null)
        } else {
            Err(error::INSUFFICIENT_FUNDS)
        }
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use ellipticoin::set_sender;
    use ellipticoin_test_framework::{alice, bob};

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
    fn test_transfer_insufficient_funds() {
        set_sender(alice());
        constructor(100);
        assert!(transfer(bob(), 120).is_err());
    }
}
