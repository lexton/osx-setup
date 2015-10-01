#!/bin/bash -ex
# This is an opinionated install of OSX utilities and applications for development
# Take what you want, or none of it

# Install the xcode command line liscence
xcode-select --install

# Install caskroom
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install into the app's directory, rather than a dir to be symlinked
export HOMEBREW_CASK_OPTS='--appdir=/Applications'

brew install caskroom/cask/brew-cask

# Install the virtualization environment, this is pretty heavyweight, consider if you actually want it
brew cask install virtualbox
brew cask install vagrant
brew cask install cord

# Install code management and communication tools
brew cask install sourcetree

# Chat messengers, take your pick
# brew cask install hipchat
# brew cask install adium
# brew cask install slack

# Because window management is the worst
brew cask install bettertouchtool

# Terminal Extensions
brew cask install go2shell
brew cask install totalterminal

# Basic Applications
brew cask install google-chrome
brew cask install spotify
brew cask install sublime-text

# Standard Installs
brew install coreutils
brew install gnu-which
brew install tree
brew install wget
brew install terminal-notifier # send OSX notifications from scripts

# Make sure our security is as up to date as possible
brew upgrade openssl

# Install Pow, this will help with manage the dev env
brew install pow
sudo pow --install-system
pow --install-local
sudo launchctl load -w /Library/LaunchDaemons/cx.pow.firewall.plist
launchctl load -w ~/Library/LaunchAgents/cx.pow.powd.plist
