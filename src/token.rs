use std::mem;
use std::ffi::CString;

extern "C" {
  pub fn console_log(ptr: *const u8, len: u32);
  // pub fn grow();
}

#[no_mangle]
pub fn add_two(n: i32) -> i32 {
    n + 2
}

// fn print(s: &str) {
//     unsafe {
//         console_log(s.as_ptr(), s.len() as u32);
//     }
// }

#[no_mangle]
pub fn entry_point(call_ptr: *mut u8, length: u32) -> *const u8 {

    call_ptr
    // unsafe {
    //     let my_string = "Hello World".to_string();
    //     let b = Box::new(my_string);
    //     let ptr = Box::into_raw(b);
    //     mem::forget(ptr);
    //     console_log(ptr as *const u8, 11);
    // }
    // call_ptr
}

#[no_mangle]
pub fn world() -> *const u8 {
    let x = b"this? World!\0";
    // unsafe {
    //     let my_string = "Hello World".to_string();
    //     let b = Box::new(my_string);
    //     let ptr = Box::into_raw(b);
    //     mem::forget(ptr);
    //     // console_log(ptr as *const u8, 11);
    //     ptr as *const u8
    // }
    let s = CString::new("hey World").unwrap();
    let p = s.as_ptr();
    mem::forget(s);
    p as *const u8

}

