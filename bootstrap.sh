#!/usr/bin/env bash

# Install Bork
if [ ! -d bork/.git ]; then
  git clone https://github.com/mattly/bork.git
fi

# Load Bork
. bork/bin/bork 2> /dev/null

export BORK_SCRIPT_DIR=`pwd`

destination $HOME/.dotfiles

# Update Bork
ok github mattly/bork

# All UNIXes
include configs.sh
include etc.sh
include vim.sh
include fish.sh
include atom.sh

# OS specfic
case "$OSTYPE" in
  # OS X
  darwin*)
    include brew.sh
    include cask.sh
    include osx.sh
    ;;
esac
