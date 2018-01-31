pub use protos::base_token::*;

pub fn balance_of(_req: Address) -> Balance {
    let mut r = Balance::new();
    r.set_amount(99);
    r
}
