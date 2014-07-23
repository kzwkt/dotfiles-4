#!/usr/bin/env bash

# Copy misc. system files
destination /etc
for file in $HOME/.dotfiles/etc/*; do
  ok file "$(basename $file)" $file
done
