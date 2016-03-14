# Taps
bake brew tap caskroom/cask
bake brew tap caskroom/versions
bake brew tap caskroom/fonts

# Install Homebrew Cask
ok brew brew-cask

# Install desktop apps
ok cask 1password
ok cask atom
ok cask dropbox
ok cask flux
ok cask gitup
ok cask google-chrome
ok cask gpgtools
ok cask hazel
ok cask hipchat
ok cask spectacle
ok cask the-unarchiver
ok cask transmission
ok cask vagrant
ok cask virtualbox
ok cask vlc

# Install fonts
ok cask font-hack

# Cleanup
bake brew cleanup
bake brew cask cleanup
