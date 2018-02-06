 #![feature(pointer_methods)]
extern crate protobuf;
mod protos;
mod base_token;
use std::mem;
use std::slice;
use std::mem::transmute;
use protos::elipticoin::{Balance, Address};
use protobuf::{Message, parse_from_bytes};

// TODO Generate this file automatically using a [protobuf plugin](https://developers.google.com/protocol-buffers/docs/reference/other)

#[no_mangle]
pub fn balance_of(ptr: *mut u32) -> *const u32 {
    let len = unsafe {*ptr.offset(0) as u32};
    let args = unsafe { slice::from_raw_parts(ptr.add(2), len as usize) };
    let in_bytes: Vec<u8> = unsafe {
      args.clone().into_iter().flat_map(|x|
        transmute::<u32, [u8; 4]>((x).to_le()).to_vec()
      ).collect::<Vec<u8>>()
    };

    let address: Address = parse_from_bytes::<Address>(&in_bytes).unwrap();
    let return_value = base_token::BaseToken::balance_of(address.bytes);
    let mut b = Balance::new();
    b.set_amount(return_value);
    let out_bytes_u8 =  b.write_to_bytes().unwrap();
    let out_bytes = unsafe{out_bytes_u8.iter().map(|x|
        transmute::<[u8; 4], u32>([*x, 0, 0, 0])
    ).collect::<Vec<u32>>()};

    let ptr2 = out_bytes.as_ptr();
    let v = vec![ptr2 as u32, out_bytes.len() as u32];
    mem::forget(out_bytes);
    let ptr = v.as_ptr();
    mem::forget(v);
    ptr
}
