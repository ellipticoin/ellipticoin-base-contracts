pub struct BaseToken;

impl BaseToken {
    pub fn balance_of(address: Vec<u8>) -> u64 {
        if address == vec![ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1 ] {
            99
        } else {
            101
        }
    }
}
