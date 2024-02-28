#!/usr/bin/env bash
set -e

REMOTE=${REMOTE:-origin}
default_branch=$(git_default_branch.sh)

git fetch
if [[ "$1" == "i" ]]; then
    git rebase -i "${REMOTE}/${default_branch}"
else
    git rebase "${REMOTE}/${default_branch}"
fi
