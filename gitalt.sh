#!/usr/bin/env bash

# Usage:
# From a clean git directory, invoke `git alt` to quickly create a "backup"
# branch whose name is ${current_branch}-alt.
#
# I realize this is not idiomatic Git -- arguably, the point of source control
# is that you shouldn't need to do this. But I often rebase my work-in-progress
# branches on master, and when the rebase is involved enough, I like to make an
# "-alt" branch first (to decrease the chance that I lose track of the WIP
# branch's hash).
#
# Installation: add the following to .gitconfig:
#   [alias]
#   alt = !gitalt.sh

if ! (output=$(git status --porcelain) && [ -z "$output" ]); then
  echo "$0: git status is unclean, not making alt branch"
  exit 1
fi

orig_branch="$(git rev-parse --abbrev-ref HEAD)"
alt="$orig_branch"
while git rev-parse -q --verify "$alt" >/dev/null; do
  alt="${alt}-alt"
done
echoval git checkout -b "$alt"
echoval git checkout "$orig_branch"
