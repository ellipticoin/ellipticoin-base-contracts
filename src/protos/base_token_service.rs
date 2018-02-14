use protos::base_token::{Balance, Address, TransferArgs, InitializeArgs};
use protobuf::{Message, parse_from_bytes};
use ::base_token;
use elipticoin_blockchain::*;
use protos::helpers::*;

// TODO Generate this file automatically from `protos/base_token.proto` using a
// [protobuf plugin](https://developers.google.com/protocol-buffers/docs/reference/other)

#[no_mangle]
pub fn _initialize(ptr: *const u8){
    let in_bytes = from_pointer_with_length(ptr);
    let initalize_args: InitializeArgs = parse_from_bytes(&in_bytes).unwrap();
    let elipticoin_blockchain = ElipitcoinBlockchain {};
    let base_token = base_token::BaseToken{
        blockchain: elipticoin_blockchain,
    };
    base_token._initialize(initalize_args.initial_supply);
}

#[no_mangle]
pub fn balance_of(ptr: *const u8) -> *const u8 {
    let in_bytes = from_pointer_with_length(ptr);
    let address: Address = parse_from_bytes(&in_bytes).unwrap();
    let elipticoin_blockchain = ElipitcoinBlockchain {};
    let base_token = base_token::BaseToken{blockchain: elipticoin_blockchain};

    let mut b = Balance::new();
    b.set_amount(base_token.balance_of(address.bytes));
    b.write_to_bytes()
      .unwrap()
      .to_pointer_with_length()
}

#[no_mangle]
pub fn transfer(ptr: *const u8) {
    let in_bytes = from_pointer_with_length(ptr);
    let transfer_args: TransferArgs = parse_from_bytes(&in_bytes).unwrap();
    let elipticoin_blockchain = ElipitcoinBlockchain {};
    let mut base_token = base_token::BaseToken{blockchain: elipticoin_blockchain};

    base_token.transfer(transfer_args.receiver_address, transfer_args.amount)
}
