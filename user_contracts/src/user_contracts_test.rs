use user_contracts::{
    deploy
};
use ellipticoin::{
    set_sender,
    set_block_winner,
    read,
};

use ellipticoin_test_framework::{
    random_bytes,
};


#[test]
fn test_deploy() {
    let name = "my_contract";
    let contract = random_bytes(32);
    deploy(name.into(), contract.clone()).unwrap();
    assert_eq!(read(name.as_bytes()), contract);
}

#[test]
fn test_deploy_name_already_taken() {
    let name = "my_contract";
    let contract = random_bytes(32);
    deploy(name.into(), contract.clone()).unwrap();
    assert!(deploy(name.into(), contract.clone()).is_err());
}
