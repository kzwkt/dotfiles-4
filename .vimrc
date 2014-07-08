""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible
set shell=/bin/sh
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Bundle "gmarik/Vundle.vim"

Bundle "editorconfig/editorconfig-vim"
Bundle "Townk/vim-autoclose"
Bundle "airblade/vim-gitgutter"
Bundle "tpope/vim-fugitive"
Bundle "tpope/vim-vinegar"
Bundle "tpope/vim-sensible"
Bundle "groenewege/vim-less"
Bundle "AndrewRadev/vim-eco"
Bundle "kchmck/vim-coffee-script"
Bundle "flazz/vim-colorschemes"

call vundle#end()

filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set ignorecase                  " Ignore case when searching
set smartcase                   " When searching try to be smart about cases

set hlsearch                    " Highlight search results
set incsearch                   " Makes search act like search in modern browsers

set lazyredraw                  " Don't redraw while executing macros (good performance config)

set magic                       " For regular expressions turn magic on

set noerrorbells                " No annoying sound on errors
set novisualbell
set t_vb=

set clipboard=unnamed           " Use the OS clipboard by default (on versions compiled with `+clipboard`)
set ttyfast                     " Optimize for fast terminal connections
set gdefault                    " Add the g flag to search/replace by default
set updatetime=750              " Faster update time (things like gitgutter)

set backupdir=~/.vim/backups    " Centralize backups, swapfiles and undo history
set directory=~/.vim/swaps
set undodir=~/.vim/undo

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Color and font settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

colorscheme smyck

hi clear VertSplit              " Clear highlight of vertical split and sign column
hi clear SignColumn

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Editing settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set ai                          " Enable auto indenting
set showmatch                   " Show matching braces when over one
set number                      " Enable line numbers
set nostartofline               " Don't reset cursor to start of line when moving around.
set shortmess=atI               " Don't show the intro message when starting Vim
set showmode                    " Show the current mode
set title                       " Show the filename in the window titlebar
