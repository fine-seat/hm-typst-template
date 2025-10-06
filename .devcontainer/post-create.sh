#! /bin/bash
echo "=============POSTCREATE============="

# update
sudo apt update && sudo apt upgrade -y

# install additional typst packages
cargo install --git https://github.com/typst/package-check.git
cargo install typship

echo "=============POSTCREATE END============="
