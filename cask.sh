#!/usr/bin/env bash

# Install/update Homebrew
ok brew

# Taps
brew tap caskroom/cask
brew tap caskroom/versions

# Install Homebrew Cask
ok brew brew-cask

# Install desktop apps
ok cask atom
ok cask flux
ok cask github
ok cask google-chrome-dev
ok cask gpgtools
ok cask hazel
ok cask hipchat
ok cask imageoptim
ok cask onepassword
ok cask rdio
ok cask spectacle
ok cask the-unarchiver
ok cask transmission
ok cask vagrant
ok cask virtualbox
ok cask vlc

# Cleanup
brew cleanup
brew cask cleanup
