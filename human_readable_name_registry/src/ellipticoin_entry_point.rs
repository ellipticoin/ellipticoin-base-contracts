use wasm_rpc::{
    Dereferenceable,
    Pointer,
    Referenceable,
    Responsable,
};
use cbor_no_std::{Value};

#[cfg(test)]
use test::fake_blockchain::FakeBlockChain;
#[cfg(not(test))]
use ellipticoin::ElipitcoinBlockchain;
use human_readable_name_registry::{HumanReadableNameRegistry};


// TODO Generate this file automatically with a [Procedural Macro](https://doc.rust-lang.org/book/first-edition/procedural-macros.html)
#[no_mangle]
pub fn register() -> Pointer {
    let rpc =  HumanReadableNameRegistry { blockchain: ElipitcoinBlockchain {} };
    let result = rpc.register();
    result.to_response()
}

#[no_mangle]
pub fn lookup(prefix_ptr: Pointer) -> Pointer {
    let rpc =  HumanReadableNameRegistry { blockchain: ElipitcoinBlockchain {} };
    let result = rpc.lookup(prefix_ptr.to_bytes());
    result.to_response()
}
