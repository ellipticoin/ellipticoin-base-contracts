pub use wasm_rpc::Error;

pub const INVALID_SIGNATURE: Error = Error {
    code: 1,
    message: "Invalid Signature",
};

pub const PERMISSION_DENIED: Error = Error {
    code: 1,
    message: "Permission Denied",
};
