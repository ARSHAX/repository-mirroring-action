#!/usr/bin/env sh
set -eu

mkdir -p ~/.ssh
echo "$INPUT_SSH_PRIVATE_KEY" > ~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa
echo "$INPUT_SSH_CONFIG" > ~/.ssh/config && chmod 600 ~/.ssh/config
echo "$INPUT_HOST_KEY" >  ~/.ssh/known_hosts && chmod 600  ~/.ssh/known_hosts
