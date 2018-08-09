#![no_std]
#![feature(alloc)]
#[macro_use]
use wasm_rpc::{Error};
use error;
use alloc::vec::Vec;
use ellipticoin::{
    block_winner as external_block_winner,
    sender,
    read,
    secp256k1_recover,
    write,
    write_u64,
};

pub fn constructor(random_seed: Vec<u8>) -> Result<(), Error> {
    write("last_signature", random_seed);
    Ok(())
}

pub fn submit_block(
    block_hash: Vec<u8>,
    signature: Vec<u8>,
    recovery_id: u8,
    winner: Vec<u8>,
) -> Result<(), Error> {
    let last_signature = read("last_signature");
    if secp256k1_recover(last_signature.clone(), signature, recovery_id as u8) == winner {
        write("block_hash", block_hash);
        Ok(())
    } else {
        Err(error::INVALID_SIGNATURE)
    }
}

pub fn update_balance(address: Vec<u8>, amount: u64) -> Result<(), Error> {
    if sender() == external_block_winner() {
        write_u64(address, amount);
        Ok(())
    } else {
        Err(error::PERMISSION_DENIED)
    }
}

pub fn block_winner() -> Result<Vec<u8>, Error> {
    Ok(sender())
}
