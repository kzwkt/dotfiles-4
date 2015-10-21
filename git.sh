destination $HOME/.dotfiles

ok github github/gitignore

cat gitignore/Global/{\
Linux,\
OSX,\
Vim,\
Windows\
}.gitignore > $HOME/.gitignore
