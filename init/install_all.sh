#!/bin/bash

# Brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null;
brew update;
brew install caskroom/cask/brew-cask 2> /dev/null

# My apps – Development & Work
brew cask install sourcetree;
brew cask install visual-studio-code;
brew cask install macdown;
brew cask install postman;
brew cask install insomnia;
brew cask install sketch;

# Security
brew cask install gpg-suite;

# Browsers & File sharing
brew cask install google-chrome;
brew cask install dropbox;
brew cask install cyberduck;
brew cask install transmission;

# Communication
brew cask install slack;
brew cask install whatsapp;

# Database clients
brew cask install valentina-studio;
brew cask install robo-3t;

# Music
brew cask install spotify;

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
