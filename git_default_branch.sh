#!/usr/bin/env bash
# https://stackoverflow.com/questions/28666357/git-how-to-get-default-branch
# May also need to execute:
#   git symbolic-ref refs/remotes/origin/HEAD refs/remotes/origin/main
#   (see <https://stackoverflow.com/a/53771249>)

REMOTE="${REMOTE:-origin}"
result=$(git remote show "${REMOTE}" | sed -n '/HEAD branch/s/.*: //p')
if [ -z "$result" ]; then
    exit 1
fi
echo "$result"
