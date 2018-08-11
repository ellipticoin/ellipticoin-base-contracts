use leader_election::{
    update_balance,
    constructor,
    submit_block,
    block_winner,
    balance_of,
};
use ellipticoin::{
    set_sender,
    set_block_winner,
    read,
};
use ellipticoin_test_framework::{
    alice,
    alices_private_key,
    bob,
    carol,
    random_bytes,
    secp256k1_sign_recoverable,
};


#[test]
fn test_constructor() {
    let random_seed = random_bytes(32);
    constructor(random_seed.clone()).unwrap();
    assert_eq!(read("last_signature"), random_seed);
}

#[test]
fn test_submit_block() {
    let random_seed = random_bytes(32);
    let block_hash = random_bytes(32);
    let (recovery_id, signature) = secp256k1_sign_recoverable(random_seed.clone(), alices_private_key());
    constructor(random_seed.clone()).unwrap();
    submit_block(block_hash, signature.to_vec(), recovery_id, alice()).unwrap();
    assert_eq!(read("last_signature"), random_seed);
}

#[test]
fn test_submit_block_invalid_signature() {
    let random_seed = random_bytes(32);
    let invalid_value = vec![0; 32];
    let block_hash = random_bytes(32);
    let (recovery_id, signature) = secp256k1_sign_recoverable(invalid_value, alices_private_key());
    constructor(random_seed.clone()).unwrap();
    assert!(submit_block(block_hash, signature.to_vec(), recovery_id, alices_private_key()).is_err());
}

#[test]
fn test_update_balance() {
    constructor(random_bytes(32)).unwrap();
    set_sender(alice());
    set_block_winner(alice());
    update_balance(bob(), 99).unwrap();
    assert_eq!(balance_of(bob()).unwrap(), 99);
}

#[test]
fn test_update_balance_permission_denied() {
    constructor(random_bytes(32)).unwrap();
    set_sender(alice());
    set_block_winner(bob());
    let first_blacksmith = random_bytes(32);
    assert!(update_balance(first_blacksmith.clone(), 99).is_err());
}

#[test]
fn test_winner() {
    let random_seed = vec![32; 7];
    constructor(random_seed).unwrap();
    set_sender(alice());
    set_block_winner(alice());
    update_balance(alice(), 100).unwrap();
    update_balance(bob(), 100).unwrap();
    update_balance(carol(), 100).unwrap();
    assert_eq!(block_winner().unwrap(), alice());
}
