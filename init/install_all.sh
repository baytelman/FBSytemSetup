#!/bin/bash

# Brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null;
brew update;
brew install caskroom/cask/brew-cask 2> /dev/null

# Python stuff
brew install python;
brew install pyenv;
pyenv install 3.4.3;
pip install --upgrade virtualenv;
brew cask install pycharm;

# node
brew install node;

# Docker and virtualization
brew cask install virtualbox;
brew cask install vagrant;
brew install docker-machine;
brew install docker-compose;

# My apps
brew cask install atom;
brew cask install sourcetree;
brew cask install google-chrome;
brew cask install sequel-pro;
brew cask install dropbox;
