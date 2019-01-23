#[macro_use]
use wasm_rpc::{Error};
use alloc::prelude::{String, Vec};
use ellipticoin::{
    read,
    write,
};
use errors::CONTRACT_NAME_TAKEN;

pub fn deploy(name: String, contract: Vec<u8>) -> Result<(), Error> {
    if (read(name.as_bytes().to_vec())).len() == 0 {
        write(name.as_bytes().to_vec(), contract);
        Ok(())
    } else {
        Err(CONTRACT_NAME_TAKEN)
    }
}
