use wasm_rpc::Error;

pub const CONTRACT_NAME_TAKEN: Error = Error {
    code: 1,
    message: "that contract name has already been taken",
};
