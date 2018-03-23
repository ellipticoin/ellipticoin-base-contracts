use alloc::slice::SliceConcatExt;

use wasm_rpc::*;
use cbor_no_std::{Value};

#[cfg(test)]
use test::fake_blockchain::FakeBlockChain;
#[cfg(not(test))]
use elipticoin_blockchain::ElipitcoinBlockchain;
use base_token::{BaseToken};
use human_readable_name_registry::{HumanReadableNameRegistry};
use contract_registry::{ContractRegistry};


// TODO Generate these functions automatically with a [Procedural Macro](https://doc.rust-lang.org/book/first-edition/procedural-macros.html)
#[no_mangle]
pub fn constructor(balance: u32) -> Pointer {
    let rpc =  BaseToken { blockchain: ElipitcoinBlockchain {} };
    rpc.constructor(balance as u64);
    to_return_value(Ok(Value::Null))
}

#[no_mangle]
pub fn balance_of(address_ptr: Pointer) -> Pointer {
    let rpc =  BaseToken { blockchain: ElipitcoinBlockchain {} };
    let result = rpc.balance_of(address_ptr.to_bytes());
    to_return_value(Ok(Value::Int(result as u32)))
}

#[no_mangle]
pub fn transfer(receiver_address_ptr: Pointer, amount: u32) -> Pointer {
    let rpc =  BaseToken { blockchain: ElipitcoinBlockchain {} };
    let result = rpc.transfer(receiver_address_ptr.to_bytes(), amount as u64);
    to_return_value(result)
}

#[no_mangle]
pub fn register() -> Pointer {
    let rpc =  HumanReadableNameRegistry { blockchain: ElipitcoinBlockchain {} };
    let result = rpc.register();
    to_return_value(result)
}

#[no_mangle]
pub fn lookup(prefix_ptr: Pointer) -> Pointer {
    let rpc =  HumanReadableNameRegistry { blockchain: ElipitcoinBlockchain {} };
    let result = rpc.lookup(prefix_ptr.to_bytes());
    to_return_value(result)
}

#[no_mangle]
pub fn deploy(name_ptr: Pointer, code_ptr: Pointer) -> Pointer {
    let rpc =  ContractRegistry { blockchain: ElipitcoinBlockchain {} };
    let result = rpc.deploy(
        name_ptr.to_string(),
        code_ptr.to_bytes(),
    );
    to_return_value(result)
}

#[no_mangle]
pub fn call(
    address_ptr: Pointer,
    name_ptr: Pointer,
    method_ptr: Pointer,
    params: u32
) -> Pointer {
    let rpc =  ContractRegistry { blockchain: ElipitcoinBlockchain {} };
    let result = rpc.call(
        address_ptr.to_bytes(),
        name_ptr.to_string(),
        method_ptr.to_string(),
        params,
    );
    [&vec![0,0,0,0][..], &result[..]].concat().as_pointer()
}
