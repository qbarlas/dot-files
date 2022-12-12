#!/bin/sh

set -e

echo "Setting ZDOTDIR to '~/.config/zsh'"
echo 'export ZDOTDIR=~/.config/zsh' >> ~/.zshenv

echo "Configuring vim"
echo "Setting VIMINIT"
echo 'export VIMINIT=$(source ~/.config/vim/vimrc)' >> ~/.zshenv

echo "Setting default user for git. You probably want to update that in : ~/.config/git/gitconfig-user"