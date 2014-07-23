#!/usr/bin/env bash

# Create required Vim directories
ok directory $HOME/.vim/{backups,swaps,undo,bundle}

destination $HOME/.vim/bundle

# Plugn helpers
  ok github tpope/vim-pathogen

# Configuration
  ok github tpope/vim-sensible
  ok github editorconfig/editorconfig-vim

# UI and colors
  ok github flazz/vim-colorschemes

# Insert mode helpers
  ok github Townk/vim-autoclose

# Git helpers
  ok github mhinz/vim-signify
  ok github tpope/vim-fugitive
  ok github idanarye/vim-merginal

# Navigation
  ok github tpope/vim-vinegar
  ok github kien/ctrlp.vim
  ok github bling/vim-airline

# Language/Environment-Specific

  # Git
    ok github tpope/vim-git                 # .gitcommit

  # CSS
    ok github cakebaker/scss-syntax.vim     # .scss       -> .css
    ok github groenewege/vim-less           # .less       -> .css
    ok github wavded/vim-stylus             # .styl       -> .css

  # Javascript
    ok github pangloss/vim-javascript       # .js
    ok github kchmck/vim-coffee-script      # .coffee     -> .js

  # Markup and templates
    ok github tpope/vim-ragtag              # .html
    ok github juvenn/mustache               # .mustache   :{
    ok github Glench/Vim-Jinja2-Syntax      # .html       jinja/nunjukcs/swig
    ok github digitaltoad/vim-jade          # .jade       -> .html
    ok github AndrewRadev/vim-eco           # .eco        -> .html

  # Shell
    ok github aliva/vim-fish                # .fish

  # Miscellaneous
    ok github ekalinin/Dockerfile.vim       # Dockerfile
