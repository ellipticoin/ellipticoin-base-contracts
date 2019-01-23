use wasm_rpc_macros::{export, get, require, set};
use ellipticoin::{sender, error};
use wasm_rpc::Value;
use wasm_rpc::error::Error;


#[export]
pub fn constructor(initial_supply: u64) {
    set!("balances", sender(), initial_supply);
}

#[export]
pub fn balance_of(address: Vec<u8>) -> u64 {
    get!("balances", address)
}

#[export]
pub fn transfer(receiver_address: Vec<u8>, amount: u64) -> Result<Value, Error> {
    let sender_balance: u64 = get!("balances", sender());
    let receiver_balance: u64 = get!("balances", receiver_address);
    require!(sender_balance >= amount, error::INSUFFICIENT_FUNDS);
    set!("balances", sender(), sender_balance - amount);
    set!("balances", receiver_address, receiver_balance + amount);
    Ok(Value::Null)
}

#[cfg(test)]
mod tests {
    use super::{balance_of, constructor, transfer};
    use ellipticoin::set_sender;
    use ellipticoin_test_framework::{alice, bob};

    #[test]
    fn test_transfer() {
        set_sender(alice());
        constructor(100);
        transfer(bob(), 20);
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
