#!/usr/bin/env bash

destination $HOME

for file in $HOME/.dotfiles/configs/*; do
  ok symlink ".$(basename $file)" $file
done
