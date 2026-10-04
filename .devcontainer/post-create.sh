#! /bin/bash
echo "=============POSTCREATE============="

# update
sudo apt update && sudo apt upgrade -y

# pre-commit hook
prek install -f

echo "=============POSTCREATE END============="
