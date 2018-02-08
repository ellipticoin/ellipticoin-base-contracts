#[cfg(test)]
use std::fs;
const TEST_DB_PATH: &str = "tmp/test.db";
extern crate cask;
use blockchain::*;
use self::cask::{CaskOptions, SyncStrategy, Cask};

pub const SENDER: [u8; 20] = [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1 ];
pub struct FakeBlockChain {
    pub db: Cask,
    pub sender: Vec<u8>,
}

impl BlockChain for FakeBlockChain {
    fn read_u32(&self, key: Vec<u8>) -> u32 {
        match self.db.get(key).unwrap() {
            Some(x) => x.value(),
            None => 0 as u32,
        }
    }

    fn read_u64(&self, key: Vec<u8>) -> u64 {
        match self.db.get(key).unwrap() {
            Some(x) => x.value(),
            None => 0 as u64,
        }
    }

    fn sender(&self) -> Vec<u8>{
        self.sender.to_vec()
    }


    fn write_u64(&self, key: Vec<u8>, value: u64) {
        self.db
            .put(key, Valuable::from_u64(value))
            .expect("could not put value");
    }
}

impl Default for FakeBlockChain {
    fn default() -> FakeBlockChain {
        fs::remove_dir_all(TEST_DB_PATH).expect("could not remove test db");
            let cask = CaskOptions::default()
            .compaction_check_frequency(1200)
            .sync(SyncStrategy::Interval(5000))
            .max_file_size(1024 * 1024 * 1024)
            .open(TEST_DB_PATH).unwrap();
        FakeBlockChain {
            db: cask,
            sender: SENDER.to_vec(),
        }
    }
}
