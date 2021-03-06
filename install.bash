#!/bin/bash

# Get current dir (so run this script from anywhere)

export DOTFILES_DIR EXTRA_DIR
DOTFILES_DIR="$(cd  "$(dirname "${BASH_SOURCE[0]}" )" && pwd)"
EXTRA_DIR="$HOME/.extra"

# Update dotfiles itself first

[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

# Bunch of symlinks

ln -sfv "$DOTFILES_DIR/runcom/.bashrc" ~
ln -sfv "$DOTFILES_DIR/runcom/.bashrc.d" ~
ln -sfv "$DOTFILES_DIR/runcom/.vimrc" ~
ln -sfv "$DOTFILES_DIR/git/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/git/.gitignore_global" ~
mkdir -p ~/.ssh && ln -sfv "$DOTFILES_DIR/ssh/config" ~/.ssh

# Apply permissions

chmod 600 ~/.ssh/config

# Platform-specific configurations

# Perform initial detect-release to decide how to proceed ...
. ~/.bashrc.d/detect-release.bashrc

[ "$DIST" == "Ubuntu" ] && $DOTFILES_DIR/ubuntu/install.bash
