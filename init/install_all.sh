#!/bin/bash

# Brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null;
brew update;
brew install caskroom/cask/brew-cask 2> /dev/null

# My apps
brew cask install visual-studio-code;
brew cask install macdown;
brew cask install cyberduck;
brew cask install sourcetree;
brew cask install google-chrome;
brew cask install dropbox;
brew cask install transmission;
brew cask install spotify;
brew cask install robo-3t;
brew cask install postman;
brew cask install sketch;
brew cask install slack;

# Java stuff
brew cask install java
brew cask install caskroom/versions/intellij-idea-ce;
brew install mvn

# Python stuff
brew install python;
brew install pyenv;
pyenv install 3.4.3;
pip install --upgrade virtualenv;
brew cask install pycharm;

# node
brew install node;
brew install npm;
npm install -g yarn;
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
