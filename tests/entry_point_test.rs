extern crate elipticoin_base_contracts;
use elipticoin_base_contracts::base_token::entry_point;
use elipticoin_base_contracts::*;

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn entry_point() {
        let mut address = Address::new();
        address.set_bytes(vec![1, 2, 3]);

        let balance = super::entry_point(&address);
        assert_eq!(balance.amount, 99);
    }
}
