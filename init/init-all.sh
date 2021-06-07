#!/bin/bash

# Brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null;
# Add to sh
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/fbaytelm/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
    
brew update;
brew install caskroom/cask/brew-cask 2> /dev/null

# My apps
brew install --cask visual-studio-code;
brew install --cask sourcetree;
brew install --cask google-chrome;
brew install --cask robo-3t;
brew install --cask figma;

# node
brew install node@12;
brew install npm;
# Add to sh
echo 'export PATH="/opt/homebrew/opt/node@12/bin:$PATH"' >> ~/.zshrc
export LDFLAGS="-L/opt/homebrew/opt/node@12/lib"
export CPPFLAGS="-I/opt/homebrew/opt/node@12/include"

# comm
brew install --cask whatsapp
brew install --cask slack

# nvm
brew install nvm;
source $(brew --prefix nvm)/nvm.sh;
echo "source $(brew --prefix nvm)/nvm.sh" >> ~/.profile

npm install -g yarn;


# Fun
brew install --cask spotify
