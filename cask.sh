#!/usr/bin/env bash

# Taps
bake brew tap caskroom/cask
bake brew tap caskroom/versions
bake brew tap casidiablo/custom

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
ok cask popcorn-time
ok cask rdio
ok cask spectacle
ok cask the-unarchiver
ok cask transmission
ok cask vagrant
ok cask virtualbox
ok cask vlc

# Cleanup
bake brew cleanup
bake brew cask cleanup
