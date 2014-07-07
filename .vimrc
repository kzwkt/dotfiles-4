if $SHELL =~ "fish"
  set shell=/bin/sh
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

" Initialize Vundle
call vundle#begin()

Bundle "gmarik/Vundle.vim"

Bundle "editorconfig/editorconfig-vim"
Bundle "Townk/vim-autoclose"
Bundle "airblade/vim-gitgutter"
Bundle "tpope/vim-fugitive"
Bundle "tpope/vim-vinegar"
Bundle "groenewege/vim-less"
Bundle "AndrewRadev/vim-eco"
Bundle "kchmck/vim-coffee-script"
Bundle "flazz/vim-colorschemes"

call vundle#end()

filetype plugin on
filetype indent on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set ruler                       " Always show current position

set so=7                        " Set 7 lines to the cursor - when moving vertically using j/k

set wildmenu                    " Enhance command-line completion

set backspace=eol,start,indent  " Configure backspace so it acts as it should act
set whichwrap+=<,>,h,l

set ignorecase                  " Ignore case when searching
set smartcase                   " When searching try to be smart about cases

set hlsearch                    " Highlight search results
set incsearch                   " Makes search act like search in modern browsers

set lazyredraw                  " Don't redraw while executing macros (good performance config)

set magic                       " For regular expressions turn magic on

set showmatch                   " Show matching brackets when text indicator is over them
set mat=2                       " How many tenths of a second to blink when matching brackets

set noerrorbells                " No annoying sound on errors
set novisualbell
set t_vb=
set tm=500

set clipboard=unnamed           " Use the OS clipboard by default (on versions compiled with `+clipboard`)
set wildmenu
set esckeys                     " Allow cursor keys in insert mode
set ttyfast                     " Optimize for fast terminal connections
set gdefault                    " Add the g flag to search/replace by default
set updatetime=750              " Faster update time (things like gitgutter)

set backupdir=~/.vim/backups    " Centralize backups, swapfiles and undo history
set directory=~/.vim/swaps
if exists("&undodir")
  set undodir=~/.vim/undo
endif

set modeline                    " Respect modeline in files
set modelines=4

set exrc                        " Enable per-directory .vimrc files and disable unsafe commands in them
set secure

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Color and font settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable syntax highlighting
syntax on

colorscheme smyck
let g:rehash256 = 1

set t_Co=256
set background=dark
set antialias

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8 nobomb

" Use Unix as the standard file type
set ffs=unix,dos,mac

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Editing settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set ai                          " Enable auto indenting
set showmatch                   " Show matching braces when over one
set number                      " Enable line numbers
set numberwidth=5               " Line-number margin width
set laststatus=2                " Always show status line
set nostartofline               " Don’t reset cursor to start of line when moving around.
set ruler                       " Show the cursor position
set shortmess=atI               " Don’t show the intro message when starting Vim
set showmode                    " Show the current mode
set title                       " Show the filename in the window titlebar
set showcmd                     " Show the (partial) command as it’s being typed
set scrolloff=3                 " Start scrolling three lines before the horizontal window border
