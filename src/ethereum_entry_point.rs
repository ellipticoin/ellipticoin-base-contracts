use ethereum_blockchain::EthereumBlockchain;

#[no_mangle]
pub fn constructor(balance: u32) -> Pointer {
    let rpc =  BaseToken { blockchain: ElipitcoinBlockchain {} };
    rpc.constructor(balance as u64);
    (Ok(Value::Null)).to_return_value()
}

#[no_mangle]
pub fn balance_of(address_ptr: Pointer) -> Pointer {
    let rpc =  BaseToken { blockchain: ElipitcoinBlockchain {} };
    let result = rpc.balance_of(address_ptr.to_bytes());
    (Ok(result as u32)).to_return_value()
}
