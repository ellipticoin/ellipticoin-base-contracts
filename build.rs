extern crate protoc_rust;

fn main() {
    protoc_rust::run(protoc_rust::Args {
        out_dir: "src/protos",
        includes: &["proto"],
        input: &[
            "proto/base_token.proto",
            "proto/entry_point.proto",
        ],
    }).expect("protoc");
}
