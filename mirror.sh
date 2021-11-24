#!/usr/bin/env sh
set -eu

/setup-ssh.sh

#export GIT_SSH_COMMAND="ssh -v -i ~/.ssh/id_rsa -o StrictHostKeyChecking=no -l $INPUT_SSH_USERNAME"
#git remote add mirror "$INPUT_TARGET_REPO_URL"
#git push --tags --force --prune mirror "refs/remotes/origin/*:refs/heads/*"
#git clone ssh://"$INPUT_HOST_KEY"@git-codecommit.ap-east-1.amazonaws.com/v1/repos/data_recorder
git remote add mirror ssh://"$INPUT_HOST_KEY"@git-codecommit.ap-east-1.amazonaws.com/v1/repos/data_recorder
git push --tags --force --prune mirror "refs/remotes/origin/*:refs/heads/*"

