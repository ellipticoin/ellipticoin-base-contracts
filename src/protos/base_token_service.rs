use std::mem;
use std::slice;
use std::mem::transmute;
//use protos::base_token::{Balance, Address};
use protos::base_token::{Balance};
//use protobuf::{Message, parse_from_bytes};
use protobuf::{Message};
// use ::base_token;

// TODO Generate this file automatically from `protos/base_token.proto` using a
// [protobuf plugin](https://developers.google.com/protocol-buffers/docs/reference/other)

fn vec_u8_to_vec_u32(vec_u8: Vec<u8>) -> Vec<u32>{
    unsafe {
        vec_u8.iter().map(|x|
            transmute::<[u8; 4], u32>([*x, 0, 0, 0])
        ).collect::<Vec<u32>>()
    }
}

fn vec_u32_to_vec_u8(vec_u32: Vec<u32>) -> Vec<u8> {
    unsafe {
      vec_u32.clone().into_iter().flat_map(|x|
        transmute::<u32, [u8; 4]>((x).to_le()).to_vec()
      ).collect::<Vec<u8>>()
    }
}

unsafe trait PointerWithLength {
    fn pointer_with_length(*const u32) -> Vec<u32>;
    fn to_pointer_with_length(&self) -> *const u32;
}

unsafe impl PointerWithLength for Vec<u32> {
    fn pointer_with_length(ptr: *const u32) -> Vec<u32> {
        unsafe {
            let len = *ptr.offset(0) as u32;
            slice::from_raw_parts(ptr.add(2), len as usize)
                .to_vec()
        }
    }

    fn to_pointer_with_length(&self) -> *const u32 {
        let ptr = self.as_ptr();
        let v = vec![ptr as u32, self.len() as u32];
        mem::forget(self);
        let ptr_ptr = v.as_ptr();
        mem::forget(v);
        ptr_ptr
    }
}

#[no_mangle]
pub fn balance_of(ptr: *mut u32) -> *const u32 {
    let in_bytes_u32 = Vec::pointer_with_length(ptr);
    let _in_bytes: Vec<u8> = vec_u32_to_vec_u8(in_bytes_u32.to_vec());


    // let return_value = base_token::BaseToken::balance_of(address.bytes);
    let return_value = 99;

    let mut b = Balance::new();
    b.set_amount(return_value);

    let out_bytes_u8 =  b.write_to_bytes().unwrap();
    let out_bytes = vec_u8_to_vec_u32(out_bytes_u8);
    out_bytes.to_pointer_with_length()
}
