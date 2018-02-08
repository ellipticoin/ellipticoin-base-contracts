use std::mem;
use std::slice;

pub fn from_pointer_with_length(ptr: *const u32) -> Vec<u32> {
    unsafe {
        let len = *ptr.offset(0) as u32;
        slice::from_raw_parts(ptr.add(2), len as usize)
            .to_vec()
    }
}

pub unsafe trait VecU32able {
    fn to_vec_u32(&self) -> Vec<u32>;
}

unsafe impl VecU32able for Vec<u8> {
    fn to_vec_u32(&self) -> Vec<u32> {
        self.into_iter().map(|x| *x as u32).collect()
    }
}

pub unsafe trait VecU8able {
    fn to_vec_u8(&self) -> Vec<u8>;
}

unsafe impl VecU8able for Vec<u32> {
    fn to_vec_u8(&self) -> Vec<u8> {
        self.into_iter().map(|x| *x as u8).collect()
    }
}

pub unsafe trait PointerWithLength {
    fn to_pointer_with_length(&self) -> *const u32;
}

unsafe impl PointerWithLength for Vec<u32> {
    fn to_pointer_with_length(&self) -> *const u32 {
        let value = self.clone();
        let ptr = value.as_ptr();
        let value_and_length = vec![ptr as u32, value.len() as u32];
        mem::forget(value);
        let value_and_length_ptr = value_and_length.as_ptr();
        mem::forget(value_and_length);
        value_and_length_ptr
    }
}
