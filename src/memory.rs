
#[cfg(not(test))]
use core::mem;
#[cfg(not(test))]
use alloc::vec::Vec;

#[cfg(test)]
use std::mem;

#[cfg(all(feature = "no_std", not(test)))]
#[lang = "panic_fmt"]
extern "C" fn panic_fmt(
    _args: ::core::fmt::Arguments,
    _file: &'static str,
    _line: u32
) -> ! {
    use core::intrinsics;
    unsafe {
        intrinsics::abort();
    }
}

#[no_mangle]
pub unsafe fn allocate(size: usize) -> *mut u8 {
    ptr_from_vec(Vec::with_capacity(size))
}

#[no_mangle]
pub unsafe fn deallocate(ptr: *mut u8, old_size: usize) {
    Vec::from_raw_parts(ptr, 0, old_size);
}

#[inline]
fn ptr_from_vec(mut buf: Vec<u8>) -> *mut u8 {
    let ptr = buf.as_mut_ptr();
    mem::forget(buf);

    ptr
}
