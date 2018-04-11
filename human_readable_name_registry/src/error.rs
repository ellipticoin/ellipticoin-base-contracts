pub use wasm_rpc::Error;

pub const INSUFFIENT_FUNDS: Error = Error {
    code: 1,
    message: "insufficient funds"
};

pub const ALREADY_REGISTERED: Error = Error {
    code: 2,
    message: "That name has already been registered"
};

pub const PREFIX_NOT_FOUND: Error = Error {
    code: 3,
    message: "No address with that prefix is registered"
};
