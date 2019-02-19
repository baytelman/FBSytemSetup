#!/bin/bash

# Brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null;
brew update;
brew install caskroom/cask/brew-cask 2> /dev/null

# My apps
brew cask install visual-studio-code;
brew cask install sourcetree;
brew cask install google-chrome;
brew cask install robo-3t;

# node
brew install node;
brew install npm;
brew install nvm;

source $(brew --prefix nvm)/nvm.sh;
echo "source $(brew --prefix nvm)/nvm.sh" >> ~/.profile

npm install -g yarn;

