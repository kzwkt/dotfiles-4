# Create required Vim directories
ok directory $HOME/.vim/backups
ok directory $HOME/.vim/swaps
ok directory $HOME/.vim/undo
ok directory $HOME/.vim/bundle

cd $HOME/.vim/bundle

# The obligatory
ok github tpope/vim-commentary
ok github tpope/vim-pathogen
ok github tpope/vim-sensible
ok github tpope/vim-vinegar
ok github tpope/vim-fugitive
ok github tpope/vim-unimpaired

# Color schemes
ok github dracula/vim

ok github airblade/vim-gitgutter
ok github editorconfig/editorconfig-vim

ok github junegunn/fzf.vim
ok github mileszs/ack.vim

# Language features
ok github w0rp/ale

# Syntax plugins
ok github leafgarland/typescript-vim
