#! /bin/bash
echo "=============POSTCREATE============="

# update
sudo apt update && sudo apt upgrade -y

# install cargo binstall
cargo install cargo-binstall --locked

# pre-commit hook
cargo binstall -y prek
prek install -f

# install additional typst packages
cargo install --git https://github.com/typst/package-check.git
cargo binstall -y typship

echo "=============POSTCREATE END============="
