#!/usr/bin/env bash

function dotfile {
    ln -sf .dotfiles/$1 ~/$1 2> /dev/null
}

# Symlink dotfiles
dotfile .aliases
dotfile .editorconfig
dotfile .gitconfig
dotfile .gitignore
dotfile .vimrc

# Create required Fish directories
mkdir -p $HOME/.config/fish

# Atom configuration
ln -sf $HOME/.dotfiles/atom/config.cson $HOME/.atom 2> /dev/null
ln -sf $HOME/.dotfiles/atom/keymap.cson $HOME/.atom 2> /dev/null
ln -sf $HOME/.dotfiles/atom/packages.cson $HOME/.atom 2> /dev/null
ln -sf $HOME/.dotfiles/atom/snippets.cson $HOME/.atom 2> /dev/null
ln -sf $HOME/.dotfiles/atom/init.coffee $HOME/.atom 2> /dev/null
ln -sf $HOME/.dotfiles/atom/styles.less $HOME/.atom 2> /dev/null

# Fish config and functions directory
ln -sf $HOME/.dotfiles/fish/config.fish $HOME/.config/fish 2> /dev/null
ln -sf $HOME/.dotfiles/fish/functions $HOME/.config/fish/functions 2> /dev/null

# Create required Vim directories
mkdir -p $HOME/.vim/{backups,swaps,undo}

# Vim color schemes and bundles
ln -sf $HOME/.dotfiles/vim/colors $HOME/.vim/colors 2> /dev/null
ln -sf $HOME/.dotfiles/vim/bundle $HOME/.vim/bundle 2> /dev/null

unset dotfile
