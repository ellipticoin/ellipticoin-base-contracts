#![no_std]
#![feature(alloc)]
#[macro_use]
use alloc::vec::Vec;
use ellipticoin::{read, secp256k1_recover, write};
use error::Error;

pub fn constructor(random_seed: Vec<u8>) -> Result<(), Error> {
    write("last_signature".as_bytes().to_vec(), random_seed);
    Ok(())
}

pub fn submit_block(
    block_hash: Vec<u8>,
    v: u64,
    r: Vec<u8>,
    s: Vec<u8>,
    winner: Vec<u8>,
) -> Result<(), Error> {
    let last_signature = read("last_signature".as_bytes().to_vec());
    if (secp256k1_recover(last_signature.clone(), v as u8, r, s) == winner) {
        write("block_hash".as_bytes().to_vec(), block_hash);
        Ok(())
    } else {
        Err(error::INVALID_SIGNATURE)
    }
}
pub fn block_hash() -> Result<Vec<u8>, Error> {
    Ok(read("block_hash".as_bytes().to_vec()))
}

pub fn last_signature() -> Result<Vec<u8>, Error> {
    Ok(read("last_signature".as_bytes().to_vec()))
}
