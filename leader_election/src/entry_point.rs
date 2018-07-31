use wasm_rpc::*;
extern {
    fn _print(message: *const u8);
}

use wasm_rpc::{
    Dereferenceable,
    Pointer,
    Responsable,
};
use cbor_lite::{
    Value,
};

#[cfg(test)]
use test::fake_blockchain::FakeBlockChain;
#[cfg(not(test))]
use ellipticoin::ElipitcoinBlockchain;
use leader_election::{LeaderElection};


// TODO Generate these functions automatically with a [Procedural Macro](https://doc.rust-lang.org/book/first-edition/procedural-macros.html)
#[no_mangle]
pub fn constructor(random_seed_ptr: Pointer) -> Pointer {
    let rpc =  LeaderElection { blockchain: ElipitcoinBlockchain {} };
    rpc.constructor(random_seed_ptr.to_bytes());
    (Ok(Value::Null)).to_response()
}

#[no_mangle]
pub fn submit_block(
    block_hash_ptr: Pointer,
    signature_ptr: Pointer,
    winner_ptr: Pointer) -> Pointer {
    let rpc =  LeaderElection { blockchain: ElipitcoinBlockchain {} };

    let signature = signature_ptr.to_array();
    let v = signature[0].as_int().unwrap() as u8;
    let r = signature[1].as_bytes().unwrap().to_vec();
    let s = signature[2].as_bytes().unwrap().to_vec();
    let result = rpc.submit_block(block_hash_ptr.to_bytes(), v, r, s, winner_ptr.to_bytes());
    result.to_response()
}

#[no_mangle]
pub fn block_hash() -> Pointer {
    let rpc =  LeaderElection { blockchain: ElipitcoinBlockchain {} };

    let result = rpc.block_hash();
    (Ok(result)).to_response()
}

#[no_mangle]
pub fn last_signature() -> Pointer {
    let rpc =  LeaderElection { blockchain: ElipitcoinBlockchain {} };

    let result = rpc.last_signature();
    (Ok(result)).to_response()
}

