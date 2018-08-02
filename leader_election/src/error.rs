pub use wasm_rpc::Error;

pub const INVALID_SIGNATURE: Error = Error {
    code: 1,
    message: "invalid signature",
};
