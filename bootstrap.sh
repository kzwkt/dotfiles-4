cd $HOME/.dotfiles

# Update Bork
ok github mattly/bork

# All UNIXes
include dots.sh
include etc.sh
include git.sh
include vim.sh
include ssh.sh
include atom.sh
include beets.sh

# OS specfic
case $OSTYPE in
  darwin*)
    include brew.sh
    include cask.sh
    include macos.sh
    ;;
esac

# Dependant on above
include pip.sh
include zsh.sh
