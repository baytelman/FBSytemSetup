#!/bin/bash

# Brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null;
brew update;
brew install caskroom/cask/brew-cask 2> /dev/null

# My apps
brew cask install atom;
brew cask install macdown;
brew cask install cyberduck;
brew cask install sourcetree;
brew cask install google-chrome;
brew cask install sequel-pro;
brew cask install dropbox;
brew cask install pycharm;

# Python stuff
brew install python;
brew install pyenv;
pyenv install 3.4.3;
pip install --upgrade virtualenv;

# node
brew install node;
brew install npm;
npm install -g gulp;
npm install -g bower;

# Docker and virtualization
brew cask install virtualbox;
brew cask install vagrant;
brew install docker-machine;
brew install docker-compose;
