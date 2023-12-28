fmt:
  cargo fmt

lint: fmt
  cargo clippy

build: lint
  cargo build

test: build
  cargo test

run:
  cargo run

coverage:
  RUSTFLAGS="--cfg procmacro2_semver_exempt" cargo install cargo-tarpaulin
  cargo tarpaulin -v

doc:
  cargo doc; open ./target/doc/zero2prod/index.html
