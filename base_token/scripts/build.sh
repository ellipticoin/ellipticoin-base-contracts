set -e

TARGET_PATH="../target/wasm32-unknown-unknown/release/"
DIST_DIR="dist"

scriptsDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $scriptsDir/..
wasmFilename="$(cat Cargo.toml | grep name | sed -n 's/name *= *"\(.*\)"/\1/p').wasm"
cargo +nightly build --target wasm32-unknown-unknown --release
mkdir -p $DIST_DIR
mv "$TARGET_PATH/$wasmFilename" "$DIST_DIR/$wasmFilename"
if ! command -v  wasm-gc > /dev/null; then
  cargo install wasm-gc
fi
wasm-gc "$DIST_DIR/$wasmFilename"
