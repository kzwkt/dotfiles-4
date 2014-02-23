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

# Create required Sublime Text directories
mkdir -p "${HOME}/Library/Application Support/Sublime Text 3/Packages/User"

# Sublime Text Packages
ln -sf "${HOME}/.dotfiles/sublime/Package Control.sublime-settings" "${HOME}/Library/Application Support/Sublime Text 3/Packages/User" 2> /dev/null
ln -sf "${HOME}/.dotfiles/sublime/Preferences.sublime-settings" "${HOME}/Library/Application Support/Sublime Text 3/Packages/User" 2> /dev/null

# Symlink Sublime Text `subl` binary
ln -sf "${HOME}/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" "/usr/local/bin/subl"

# Symlink MacVim `mvim` binary
ln -sf "$(dirname $(readlink $HOME/Applications/MacVim.app))/mvim" "/usr/local/bin/mvim"

# Create required Fish directories
mkdir -p $HOME/.config/fish

# Fish config and functions directory
ln -sf $HOME/.dotfiles/fish/config.fish $HOME/.config/fish 2> /dev/null
ln -sf $HOME/.dotfiles/fish/functions $HOME/.config/fish/functions 2> /dev/null

# Create required Vim directories
mkdir -p $HOME/.vim/{backups,swaps,undo}

# Vim color schemes and bundles
ln -sf $HOME/.dotfiles/vim/colors $HOME/.vim/colors 2> /dev/null
ln -sf $HOME/.dotfiles/vim/bundle $HOME/.vim/bundle 2> /dev/null

unset dotfile
