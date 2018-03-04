use base_token::*;
use test::fake_blockchain::FakeBlockChain;
use test::fake_blockchain::SENDER;
use test::fake_blockchain::ALICE;

#[test]
fn balance_of() {
    let fake_blockchain =  FakeBlockChain {..Default::default()};
    let base_token =  BaseToken { blockchain: fake_blockchain };
    base_token.constructor(100).unwrap();
    let balance = base_token.balance_of(SENDER.to_vec()).unwrap().as_int().unwrap();
    assert_eq!(balance, 100);
}

#[test]
fn transfer() {
    let fake_blockchain =  FakeBlockChain {..Default::default()};
    let mut base_token =  BaseToken { blockchain: fake_blockchain };
    base_token.constructor(100).unwrap();
    base_token.transfer(ALICE.to_vec(), 20).unwrap();
    let senders_balance = base_token.balance_of(SENDER.to_vec()).unwrap().as_int().unwrap();
    assert_eq!(senders_balance, 80);
    let alices_balance = base_token.balance_of(ALICE.to_vec()).unwrap().as_int().unwrap();
    assert_eq!(alices_balance, 20);
}

#[test]
#[should_panic]
fn transfer_insufficient_funds() {
    let fake_blockchain =  FakeBlockChain {..Default::default()};
    let mut base_token =  BaseToken { blockchain: fake_blockchain };
    base_token.constructor(100).unwrap();
    base_token.transfer(ALICE.to_vec(), 120).unwrap();
}
