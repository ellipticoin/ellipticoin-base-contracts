extern crate memalloc;
use std::mem;
use std::mem::transmute;
use std::slice;

pub const LENGTH_BYTE_COUNT: usize = 4;

pub fn from_pointer_with_length(ptr: *const u8) -> Vec<u8> {
    let length_slice = unsafe { slice::from_raw_parts(ptr.offset(0) as *const u8, LENGTH_BYTE_COUNT as usize) };
    let mut length_u8 = [0 as u8; LENGTH_BYTE_COUNT];
    length_u8.clone_from_slice(&length_slice);
    let length: u32 = unsafe {transmute(length_u8)};

    unsafe {
        slice::from_raw_parts(ptr.offset(LENGTH_BYTE_COUNT as isize) as *const u8, length.to_be() as usize).to_vec()
    }
}

pub unsafe trait PointerWithLength {
    fn to_pointer_with_length(&self) -> *const u8;
}

unsafe impl PointerWithLength for Vec<u8> {
    fn to_pointer_with_length(&self) -> *const u8 {
        let value = self.clone();
        let length_slice: [u8; LENGTH_BYTE_COUNT] = unsafe{ transmute(value.len().to_be()) };
        let value_and_length = [&length_slice[..], &value[..]].concat();;
        let value_and_length_ptr = value_and_length.as_ptr();
        mem::forget(value_and_length);
        value_and_length_ptr
    }
}

#[no_mangle]
pub fn alloc(size: usize) -> *mut u8 {
    unsafe {
        let ptr = memalloc::allocate(size);
        ptr
    }
}

#[no_mangle]
pub fn dealloc(ptr: *mut u8, size: usize) {
    unsafe  {
        memalloc::deallocate(ptr as *mut u8, size);
    }
}
