destination $HOME/.dotfiles

# Update Bork
ok github mattly/bork

# All UNIXes
include configs.sh
include etc.sh
include vim.sh
include fish.sh
include atom.sh

# OS specfic
case $OSTYPE in
  darwin*)
    include brew.sh
    include cask.sh
    include osx.sh
    ;;
esac

# Dependant on above
include npm.sh
