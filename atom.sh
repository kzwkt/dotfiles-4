#!/usr/bin/env bash

# Atom config
ok directory $HOME/.atom
destination $HOME/.atom
for file in $HOME/.dotfiles/atom/*; do
  ok symlink "$(basename $file)" $file
done
