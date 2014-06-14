#!/usr/local/bin/fish

# Install nvm-fish
git clone https://github.com/Alex7Kom/nvm-fish.git $HOME/.nvm

# Fetch nvm-fish binaries
. $HOME/.nvm/nvm.fish

# Install stable and dev versions of Node
nvm install 0.10
nvm install 0.11

# Set stable version as shell default
nvm alias default 0.10
