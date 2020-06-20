# dotfiles

## Introduction
"dotfiles" is not really the right name for this repo. It contains several helper scripts.

## Installation
1. Clone this repo
2. Add to `.bash_profile` (replacing `<REPO>` with the location of this repository):

	   source "<REPO>/bash_prompt"
	   export PATH="<REPO>:$PATH"

3. Run `git config --global include.path "$PWD/gitconfig"` to get the gitconfig options

## General Bash knowledge
https://stackoverflow.com/questions/59895/how-to-get-the-source-directory-of-a-bash-script-from-within-the-script-itself

