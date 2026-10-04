#! /bin/bash
echo "=============POSTCREATE============="

# update
sudo apt update && sudo apt upgrade -y

# pre-commit hook
prek install -f

# install additional typst packages
cargo install --git https://github.com/typst/package-check.git

echo "=============POSTCREATE END============="
