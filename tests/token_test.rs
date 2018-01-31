extern crate elipticoin_base_contracts;
use elipticoin_base_contracts::base_token::balance_of;
use elipticoin_base_contracts::*;

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn balance_of() {
        let mut address = Address::new();
        address.set_bytes(vec![1, 2, 3]);
        let balance = super::balance_of(address);
        assert_eq!(balance.amount, 99);
    }
}
