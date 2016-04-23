# Create required Vim directories
ok directory $HOME/.vim/backups
ok directory $HOME/.vim/swaps
ok directory $HOME/.vim/undo
ok directory $HOME/.vim/bundle

cd $HOME/.vim/bundle

# Plugin helpers
  ok github tpope/vim-pathogen

# Configuration
  ok github tpope/vim-sensible
  ok github editorconfig/editorconfig-vim

# UI and colors
  ok github flazz/vim-colorschemes

# Insert mode helpers
  ok github Townk/vim-autoclose
  ok github Shougo/neocomplete.vim

# Text manipulation
  ok github tpope/vim-commentary

# Git helpers
  ok github mhinz/vim-signify
  ok github tpope/vim-fugitive
  ok github idanarye/vim-merginal

# Navigation
  ok github tpope/vim-vinegar
  ok github kien/ctrlp.vim
  ok github vim-airline/vim-airline
  ok github christoomey/vim-tmux-navigator
  ok github edkolev/tmuxline.vim

# Syntax helpers
  ok github scrooloose/syntastic

# Language/Environment-Specific

  # Git
    ok github tpope/vim-git                 # .gitcommit

  # CSS
    ok github cakebaker/scss-syntax.vim     # .scss
    ok github groenewege/vim-less           # .less

  # Javascript
    ok github pangloss/vim-javascript       # .js
    ok github kchmck/vim-coffee-script      # .coffee
    ok github elzr/vim-json                 # .json

  # Shell
    ok github aliva/vim-fish                # .fish

  # Java
    ok github vim-scripts/groovy.vim        # .groovy
    ok github tfnico/vim-gradle             # .gradle

  # Miscellaneous
    ok github ekalinin/Dockerfile.vim       # Dockerfile
    ok github robotvert/vim-nginx           # Nginx configs
