#!/bin/bash

# Brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null;
brew update;
brew install caskroom/cask/brew-cask 2> /dev/null

# My apps
brew cask install iterm2;
brew cask install visual-studio-code;
brew cask install macdown;
brew cask install cyberduck;
brew cask install sourcetree;
brew cask install google-chrome;
brew cask install dropbox;
brew cask install transmission;
brew cask install spotify;
brew cask install robo-3t;

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
npm install -g nvm;
npm install -g gulp;
npm install -g bower;

