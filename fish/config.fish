# Aliases shared between fish and bash
. ~/.aliases

# Set GOPATH and prepend the `bin` dir to PATH
set -x GOPATH "$HOME/Development/go"; set PATH $GOPATH/bin $PATH

# Enable rbenv
set PATH $HOME/.rbenv/bin $PATH
set PATH $HOME/.rbenv/shims $PATH

rbenv rehash >/dev/null ^&1
