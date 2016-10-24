#!/bin/bash

# Get current dir (so run this script from anywhere)

export DOTFILES_DIR EXTRA_DIR
DOTFILES_DIR="$(cd  "$(dirname "${BASH_SOURCE[0]}" )" && pwd)"
EXTRA_DIR="$HOME/.extra"

# Update dotfiles itself first

[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

# Bunch of symlinks
ln -sfv "$DOTFILES_DIR/runcom/.bashrc" ~
ln -sfv "$DOTFILES_DIR/runcom/.vimrc" ~
ln -sfv "$DOTFILES_DIR/git/.gitconfig" ~
mkdir -p ~/.ssh && ln -sfv "$DOTFILES_DIR/ssh/config" ~/.ssh

# Platform-specific configurations
DISTRO="$(awk -F= '{ if ($1 == "NAME") { gsub(/"/,"",$2); print $2;} }' /etc/os-release)"
[ "$DISTRO" == "Ubuntu" ] && $DOTFILES_DIR/ubuntu/install.bash

