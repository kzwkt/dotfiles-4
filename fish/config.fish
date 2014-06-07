# Aliases shared between fish and bash
. ~/.aliases

# Report terminal type
set -x TERM "xterm-256color"

# Set GOPATH and prepend the `bin` dir to PATH
set -x GOPATH "$HOME/Development/go"; set PATH $GOPATH/bin $PATH

# Set correct Atom application path
set -x ATOM_PATH "$HOME/Applications"
