use alloc::string::String;
use alloc::vec::Vec;
use wasm_rpc::{
    Responsable,
    Dereferenceable,
    Pointer,
    Error,
};
pub const INSUFFIENT_FUNDS: Error = Error {
    code: 1,
    message: "insufficient funds"
};
use ellipticoin::*;

pub fn constructor(initial_supply: u32) -> Result<(), Error> {
    write_u32(sender(), initial_supply);
    Ok(())
}

pub fn balance_of(address: Pointer) -> Result<u32, Error> {
    Ok(read_u32(address.to_bytes()))
}

pub fn transfer(receiver_address: Pointer, amount: u32) -> Result<(), Error> {
    let sender_balance = read_u32(sender());
    let receiver_balance = read_u32(receiver_address.to_bytes());

    if sender_balance > amount {
        write_u32(sender(), sender_balance - amount);
        write_u32(receiver_address.to_bytes(), receiver_balance + amount);
        Ok(())
    } else {
        Err(INSUFFIENT_FUNDS)
    }
}
