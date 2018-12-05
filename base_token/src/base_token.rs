use wasm_rpc::Error;
use alloc::vec::Vec;

use ellipticoin::{
    read_int,
    sender,
    write_int,
};

use error::INSUFFIENT_FUNDS;

pub fn constructor(initial_supply: u64) -> Result<(), Error> {
    write_int(sender(), initial_supply);
    Ok(())
}

pub fn balance_of(address: Vec<u8>) -> Result<u64, Error> {
    Ok(read_int(address))
}

pub fn transfer(receiver_address: Vec<u8>, amount: u64) -> Result<(), Error> {
    let sender_balance = read_int(sender());
    let receiver_balance = read_int(receiver_address.clone());

    if sender_balance => amount {
        write_int(sender(), sender_balance - amount);
        write_int(receiver_address, receiver_balance + amount);
        Ok(())
    } else {
        Err(INSUFFIENT_FUNDS)
    }
}
