#!/usr/bin/env bash
set -e

REMOTE=${REMOTE:-origin}
default_branch=$(git_default_branch.sh)
git fetch
git checkout "$default_branch" >/dev/null
git reset --hard "${REMOTE}/$default_branch"
