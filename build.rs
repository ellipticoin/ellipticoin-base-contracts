extern crate protoc_rust;

fn main() {
    protoc_rust::run(protoc_rust::Args {
        out_dir: "src/protos",
        input: &["./protos/base_token.proto"],
        includes: &["protos"],
    }).expect("protoc");
}
