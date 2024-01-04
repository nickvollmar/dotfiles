# dotfiles

## Introduction
"dotfiles" is not really the right name for this repo. It contains several helper scripts.

## Installation
1. Clone this repo
2. Add to shell config (replacing `<REPO>` with the location of this repository):

	   export PATH="<REPO>:$PATH"

3. "Install" the git options:
```
git config --global include.path "$PWD/gitconfig"
git config --global core.excludesFile "$PWD/gitignore_global"
```

## General Bash knowledge
Getting the script directory
<https://stackoverflow.com/a/67149152>
```
SCRIPT_DIR=$(
    export CDPATH=''
    cd -- "$(dirname -- "$BASH_SOURCE")" &>/dev/null
    cd -P -- "$(dirname -- "$(readlink -- "$BASH_SOURCE" || echo .)")" &>/dev/null
    pwd
)
```

## Links
<https://github.com/dikiaap/dotfiles/blob/master/.oh-my-zsh/themes/oxide.zsh-theme>
