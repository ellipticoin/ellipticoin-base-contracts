#![no_std]
#![feature(alloc)]
#[macro_use]
use wasm_rpc::{Error};
use cbor_no_std::{to_bytes, from_bytes, Value};
use error;
use alloc::collections::btree_map::BTreeMap;
use alloc::vec::Vec;
use ellipticoin::{
    block_winner as external_block_winner,
    sender,
    read,
    secp256k1_recover,
    write,
    update,
    write_u64,
};

pub fn constructor(random_seed: Vec<u8>) -> Result<(), Error> {
    let balances: BTreeMap<Vec<u8>, Value> = BTreeMap::new();

    write("balances", to_bytes(balances.into()));
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
        update("balances", &|balances_vec: Vec<u8>| {
            let mut balances: BTreeMap<Vec<u8>, Value> = from_bytes(balances_vec).as_map_mut().unwrap().clone();
            balances.insert(address.clone(), amount.into());
            to_bytes(balances.into())
        });
        Ok(())
    } else {
        Err(error::PERMISSION_DENIED)
    }
}

pub fn balance_of(address: Vec<u8>) -> Result<u64, Error> {
    let balances: BTreeMap<Vec<u8>, Value> = from_bytes(read("balances")).as_map().unwrap().clone();

    match balances.get(&address) {
        Some(value) => Ok(value.as_int().unwrap()),
        None => Ok(0)
    }
}

pub fn block_winner() -> Result<Vec<u8>, Error> {
    Ok(sender())
}
