use alloc::vec::Vec;
use alloc::String;
use error::{Error};
use cbor_no_std::{from_bytes, to_bytes, Value};
use core::intrinsics::transmute;
use core::mem;
use core::slice;

pub const LENGTH_BYTE_COUNT: usize = 4;

pub type Pointer = *const u8;

fn u32_to_u8_vec(x:u32) -> Vec<u8> {
    let b1 : u8 = ((x >> 24) & 0xff) as u8;
    let b2 : u8 = ((x >> 16) & 0xff) as u8;
    let b3 : u8 = ((x >> 8) & 0xff) as u8;
    let b4 : u8 = (x & 0xff) as u8;
    vec![b4, b3, b2, b1]
}

fn u8_vec_to_u32(x: Vec<u8>) -> u32 {
    (x[3] as u32) << 24 |
        ((x[2] as u32) & 0xff) << 16 |
        ((x[1] as u32) & 0xff) << 8 |
        ((x[0] as u32) & 0xff)
}

pub unsafe trait Dereferenceable {
    fn as_raw_bytes(&self) -> Vec<u8>;
    fn to_bytes(&self) -> Vec<u8>;
    fn to_string(&self) -> String;
}

unsafe impl Dereferenceable for Pointer {
    fn as_raw_bytes(&self) -> Vec<u8> {
        let length_slice = unsafe { slice::from_raw_parts(self.offset(0) as *const u8, LENGTH_BYTE_COUNT as usize) };
        let length = u8_vec_to_u32(length_slice.to_vec());

        unsafe {
            slice::from_raw_parts(self.offset(LENGTH_BYTE_COUNT as isize) as *const u8, length as usize).to_vec()
        }
    }

    fn to_bytes(&self) -> Vec<u8> {
        from_bytes(self.as_raw_bytes()).as_bytes().unwrap().to_vec()
    }

    fn to_string(&self) -> String {
        let name = from_bytes(self.as_raw_bytes());
        name.as_string().unwrap().clone()
    }
}

pub unsafe trait Referenceable {
    fn as_pointer(&self) -> Pointer;
}

unsafe impl Referenceable for Vec<u8> {
    fn as_pointer(&self) -> Pointer {
        let mut value = self.clone();
        let mut value_and_length = u32_to_u8_vec(value.len() as u32);
        value_and_length.append(&mut value);
        let value_and_length_ptr = value_and_length.as_ptr();
        mem::forget(value_and_length);
        value_and_length_ptr
    }
}

unsafe impl Referenceable for String {
    fn as_pointer(&self) -> Pointer {
        self.as_bytes().to_vec().as_pointer()
    }
}

pub trait ReturnValue {
    fn to_return_value(self) -> Pointer;
}


impl ReturnValue for Result<Value, Error> {
    fn to_return_value(self: Result<Value, Error>) -> Pointer {
        let error_code = match self {
            Err(error) => error.code,
            _ => 0,
        };

        let mut return_value = match self {
            Ok(Value::Null) => vec![],
            Ok(value) => to_bytes(value),
            Err(error) => to_bytes(Value::String(error.message.into())),
        };

        let mut error_code_bytes = u32_to_u8_vec(error_code);

        error_code_bytes.append(&mut return_value);
        error_code_bytes.as_pointer()
    }
}

impl ReturnValue for Result<(), Error> {
    fn to_return_value(self) -> Pointer {
        match self {
            Ok(value) => (Ok::<Value, Error>(value.into())).to_return_value(),
            Err(error) => (Err::<Value, Error>(error)).to_return_value()
        }
    }
}

impl ReturnValue for Result<u32, Error> {
    fn to_return_value(self) -> Pointer {
        match self {
            Ok(value) => (Ok::<Value, Error>(value.into())).to_return_value(),
            Err(error) => (Err::<Value, Error>(error)).to_return_value()
        }
    }
}

impl ReturnValue for Result<Vec<u8>, Error> {
    fn to_return_value(self) -> Pointer {
        match self {
            Ok(value) => (Ok::<Value, Error>(value.into())).to_return_value(),
            Err(error) => (Err::<Value, Error>(error)).to_return_value()
        }
    }
}

pub trait FromBytes {}

impl FromBytes {
    pub fn from_u64(value: u64) -> Vec<u8>{
        let bytes: [u8; 8] = unsafe { transmute(value.to_le()) };
        bytes.to_vec()
    }
}

pub trait Bytes<T> {
    fn value(&self) -> T;
}

impl Bytes<u64> for Vec<u8> {
    fn value(&self) -> u64 {
        if self.len() == 8 {
            let mut slice: [u8; 8] = [0; 8];
            slice.copy_from_slice(&self[..]);
            unsafe {
                transmute::<[u8; 8], u64>(slice)
            }
        } else {
            0
        }
    }
}

impl Bytes<u32> for Vec<u8> {
    fn value(&self) -> u32 {
        let mut slice: [u8; 4] = [0; 4];
        slice.copy_from_slice(&self[..]);
        u8_vec_to_u32(slice.to_vec())
    }
}
