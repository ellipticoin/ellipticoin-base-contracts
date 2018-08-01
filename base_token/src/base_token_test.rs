use base_token::{
    constructor,
    balance_of,
    transfer,
};
use ellipticoin::ALICE;
use ellipticoin::BOB;
use ellipticoin::set_sender;

#[test]
fn test_balance_of() {
    set_sender(ALICE.to_vec());
    constructor(100).unwrap();
    let balance = balance_of(ALICE.to_vec()).unwrap();
    assert_eq!(balance, 100);
}

#[test]
fn test_transfer() {
    set_sender(ALICE.to_vec());
    constructor(100).unwrap();
    transfer(BOB.to_vec(), 20).unwrap();
    let alices_balance = balance_of(ALICE.to_vec()).unwrap();
    assert_eq!(alices_balance, 80);
    let bobs_balance = balance_of(BOB.to_vec()).unwrap();
    assert_eq!(bobs_balance, 20);
}

#[test]
fn test_transfer_insufficient_funds() {
    set_sender(ALICE.to_vec());
    constructor(100).unwrap();
    assert!(transfer(BOB.to_vec(), 120).is_err());
}
