use wasm_rpc::{
    Pointer,
    Responsable,
};

#[cfg(test)]
use test::fake_blockchain::FakeBlockChain;
#[cfg(not(test))]
use ellipticoin::ElipitcoinBlockchain;
use base_api::{BaseApi};


// TODO Generate these functions automatically with a [Procedural Macro](https://doc.rust-lang.org/book/first-edition/procedural-macros.html)
#[no_mangle]
pub fn sender() -> Pointer {
    let rpc =  BaseApi { blockchain: ElipitcoinBlockchain {} };
    let sender = rpc.sender();
    (Ok(sender)).to_response()
}
#[no_mangle]
pub fn block_hash() -> Pointer {
    let rpc =  BaseApi { blockchain: ElipitcoinBlockchain {} };
    let block_hash = rpc.block_hash();
    (Ok(block_hash)).to_response()
}

#[no_mangle]
pub fn five() -> Pointer {
    (Ok(5)).to_response()
}
