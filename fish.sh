#!/usr/bin/env bash

# Fish config
ok directory $HOME/.config/fish
destination $HOME/.config/fish
for file in $HOME/.dotfiles/fish/*; do
  ok symlink "$(basename $file)" $file
done
