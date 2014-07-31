#!/usr/bin/env bash

# Install/update Homebrew
ok brew

# Taps
bake brew tap homebrew/dupes

# Install formulae
ok brew ack
ok brew docker
ok brew fig
ok brew fish
ok brew ghi
ok brew git
ok brew go
ok brew httpie
ok brew hub
ok brew node
ok brew tree
ok brew vim

# Cleanup
bake brew cleanup