#!/usr/bin/env bash

# Create required Vim directories
ok directory $HOME/.vim/{backups,swaps,undo,bundle}

# Install Pathogen
destination $HOME/.vim/bundle
ok github tpope/vim-pathogen

# Install Vim plugins
ok github editorconfig/editorconfig-vim
ok github Townk/vim-autoclose
ok github airblade/vim-gitgutter
ok github tpope/vim-fugitive
ok github tpope/vim-vinegar
ok github tpope/vim-sensible
ok github groenewege/vim-less
ok github AndrewRadev/vim-eco
ok github kchmck/vim-coffee-script
ok github flazz/vim-colorschemes
ok github bling/vim-airline
ok github kien/ctrlp.vim
ok github ekalinin/Dockerfile.vim
ok github pangloss/vim-javascript
