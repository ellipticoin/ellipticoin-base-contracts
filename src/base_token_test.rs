use base_token::*;
use test::fake_blockchain::FakeBlockChain;
use test::fake_blockchain::SENDER;
use test::fake_blockchain::ALICE;

#[test]
fn balance_of() {
    let fake_blockchain =  FakeBlockChain {..Default::default()};
    let base_token =  BaseToken { blockchain: fake_blockchain };
    base_token.constructor(100);
    let balance = base_token.balance_of(SENDER.to_vec()).unwrap();
    assert_eq!(balance, 100);
}

#[test]
fn transfer() {
    let fake_blockchain =  FakeBlockChain {..Default::default()};
    let mut base_token =  BaseToken { blockchain: fake_blockchain };
    base_token.constructor(100);
    base_token.transfer(ALICE.to_vec(), 20);
    let senders_balance = base_token.balance_of(SENDER.to_vec()).unwrap();
    assert_eq!(senders_balance, 80);
    let alices_balance = base_token.balance_of(ALICE.to_vec()).unwrap();
    assert_eq!(alices_balance, 20);
}

#[test]
fn transfer_insufficient_funds() {
    let mut fake_blockchain =  FakeBlockChain {..Default::default()};
    let throw_callback = |msg: &str| assert_eq!("insufficient funds", msg);
    fake_blockchain.set_throw_callback(throw_callback);
    let mut base_token =  BaseToken { blockchain: fake_blockchain };
    base_token.constructor(100);
    base_token.transfer(ALICE.to_vec(), 120);
}


