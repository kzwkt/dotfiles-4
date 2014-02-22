#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until the boostrap has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2> /dev/null &

# Overwrite global PATH
sudo cp -r ../etc/paths /etc/paths 2> /dev/null

# Overwrite accepted shells
sudo cp -r ../etc/shells /etc/shells 2> /dev/null

# Install Homebrew formulae and casks
(cd ../brew && ./install.sh)

# Symlink Sublime Text `subl` binary
ln -sf "${HOME}/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" "/usr/local/bin/subl"

# Symlink MacVim `mvim` binary
ln -sf "$(dirname $(readlink $HOME/Applications/MacVim.app))/mvim" "/usr/local/bin/mvim"

# Set OS X defaults
(cd ../osx && sudo ./defaults.sh)

# Symlink dotfiles
./symlink.sh

# Install Pathogen
(cd ../vim && ./pathogen.sh)

# Set my default shell
sudo chsh -s /usr/local/bin/fish kasperisager 2> /dev/null

# Hide /opt directory
sudo chflags hidden /opt
