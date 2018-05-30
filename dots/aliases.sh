# Use `hub` as git wrapper (http://defunkt.github.com/hub/)
alias git="hub"

# Be nice
alias please="sudo"

# Better safe than sorry
alias rm="rm -i"

# Node.js
alias nls="npm list --depth=0"

# Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
  colorflag="--color"
else # OS X `ls`
  colorflag="-G"
fi

# List all files colorized in long format
alias l="ls -lF ${colorflag}"

# List all files colorized in long format, including dot files
alias la="ls -laF ${colorflag}"

# List only directories
alias lsd="ls -lF ${colorflag} | grep --color=never '^d'"

# Always use color output for `ls`
alias ls="command ls ${colorflag}"

# Git aliases
alias g="git"
alias gl="git pull --prune"
alias gp="git push"
alias gd="git diff"
alias gdc="git diff --cached"
alias gc="git commit"
alias gca="git commit -a"
alias gco="git checkout"
alias gb="git branch"
alias gs="git status -sb"
alias gm="git merge"
alias gr="git rebase"
alias gri="git rebase -i"
alias gpr="git pull-request"
alias gst="git stash"

# Bundler aliases
alias b="bundle"
alias bi="b install"
alias bil="bi --local"
alias bu="b update"
alias be="b exec"
alias bp="b package"

# Docker aliases
alias d="docker"
alias dc="docker-compose"
alias dm="docker-machine"

# Yarn aliases
alias y="yarn"

# Flush Directory Service cache
alias flush="dscacheutil -flushcache && killall -HUP mDNSResponder"

# Clean up LaunchServices to remove duplicates in the "Open With" menu
alias lscleanup="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user; killall Finder"

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true; killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false; killall Finder"

# Reload the shell (i.e. invoke as a login shell)
alias reload="exec $SHELL -l"

# Get a UNIX timestamp
alias timestamp="date +%s"

# Get week number
alias week='date +%V'

# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"
