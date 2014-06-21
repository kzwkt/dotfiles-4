#!/usr/bin/env bash

# Install Pathogen
mkdir -p ~/.vim/autoload; \
curl -Sso ~/.vim/autoload/pathogen.vim \
    https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim
