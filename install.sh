#!/usr/bin/env bash

# Get current dir (so run this script from anywhere)

export DOTFILES_DIR DOTFILES_CACHE 

DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DOTFILES_CACHE="$DOTFILES_DIR/.cache.sh"


# Common functions

. "$DOTFILES_DIR/system/.function"
. "$DOTFILES_DIR/system/.echos"

bot "Hi! I'm going to install tooling and tweak your system settings. Here I go...\n"

running "Update dotfiles"
if is-executable git -a -d "$DOTFILES_DIR/.git"; then git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master; fi
ok

running "Bunch of symlinks"
ln -sfv "$DOTFILES_DIR/vim/.vimrc" ~
ln -sfv "$DOTFILES_DIR/vim/.vimrc" ~"/.config/nvim/init.vim"
ln -sfv "$DOTFILES_DIR/zsh/.zshrc" ~
ln -sfv "$DOTFILES_DIR/git/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/git/.gitignore_global" ~
ln -sfv "$DOTFILES_DIT/i3/config" ~"/.config/i3/config"
ok

bot "Woot! All done."
