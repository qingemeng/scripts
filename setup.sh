#!/bin/sh
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

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
brew install openssl
brew install fish
brew install node
brew install thefuck
brew install python3
brew install yarn
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
brew cask install rstudio
brew cask install github-desktop
brew tap homebrew/science
brew cask install fluor
brew install Caskroom/cask/xquartz
brew install r
