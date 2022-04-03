#!/usr/bin/env sh
set -eu

mkdir -p /root/.ssh/

echo "$INPUT_SSH_PRIVATE_KEY" > /root/.ssh/id_rsa
chmod 600 /root/.ssh/id_rsa

echo "$INPUT_SSH_PUBLIC_KEY" > /root/.ssh/id_rsa.pub
chmod 600 /root/.ssh/id_rsa.pub


echo "$INPUT_SSH_CONFIG" > /root/.ssh/config && chmod 600 /root/.ssh/config

touch /root/.ssh/known_hosts
ssh-keyscan git-codecommit."$INPUT_AWS_REGION".amazonaws.com >> /root/.ssh/known_hosts


