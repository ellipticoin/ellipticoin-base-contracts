use protos::base_token::{Balance, Address, TransferArgs};
use protobuf::{Message, parse_from_bytes};
use ::base_token;
use elipticoin_blockchain::*;
use protos::helpers::*;

// TODO Generate this file automatically from `protos/base_token.proto` using a
// [protobuf plugin](https://developers.google.com/protocol-buffers/docs/reference/other)


#[no_mangle]
pub fn _initialize(){
    let elipticoin_blockchain = ElipitcoinBlockchain {};
    let base_token = base_token::BaseToken{
        blockchain: elipticoin_blockchain,
    };
    base_token._initialize();
}

#[no_mangle]
pub fn balance_of(ptr: *mut u32) -> *const u32 {
    let in_bytes = from_pointer_with_length(ptr).to_vec_u8();
    let address: Address = parse_from_bytes(&in_bytes).unwrap();
    let elipticoin_blockchain = ElipitcoinBlockchain {};
    let base_token = base_token::BaseToken{blockchain: elipticoin_blockchain};

    let mut b = Balance::new();
    b.set_amount(base_token.balance_of(address.bytes));
    b.write_to_bytes()
      .unwrap()
      .to_vec_u32()
      .to_pointer_with_length()
}

#[no_mangle]
pub fn transfer(ptr: *mut u32) {
    let in_bytes = from_pointer_with_length(ptr).to_vec_u8();
    let transfer_args: TransferArgs = parse_from_bytes(&in_bytes).unwrap();
    let elipticoin_blockchain = ElipitcoinBlockchain {};
    let mut base_token = base_token::BaseToken{blockchain: elipticoin_blockchain};

    base_token.transfer(transfer_args.receiver_address, transfer_args.amount)
}
