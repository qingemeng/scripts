#!/bin/sh

#
# git set up
#
git config --global core.excludesfile '~/.gitignore_global'
echo ".idea" ~/.gitignore_global
echo ".DS_Store" ~/.gitignore_global
#
# brew packages
#
brew install wget
brew install fish
brew install node
brew install thefuck
#
# brew cask
#
brew cask install sublime-text
brew cask install google-chrome
brew cask install virtualbox
brew cask install iterm2
brew cask install telegram
brew cask install shiftit
brew cask install spotify

brew cask install slack
