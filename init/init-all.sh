#!/bin/bash

# Brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null;
# Add to sh
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/fbaytelm/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
    
brew update;
brew install caskroom/cask/brew-cask 2> /dev/null

# System utilities
## Asimov – Prevent development caches to be included in backups
brew install asimov
sudo brew services start asimov

# My apps
brew install --cask visual-studio-code;
brew install --cask sourcetree;
brew install --cask google-chrome;
brew install --cask robo-3t;
brew install --cask figma;

# comm
brew install --cask whatsapp
brew install --cask slack

# Fun
brew install --cask spotify

# node
brew install node@14;
brew install npm;
# Add to sh
echo 'export PATH="/opt/homebrew/opt/node@14/bin:$PATH"' >> ~/.zshrc
export LDFLAGS="-L/opt/homebrew/opt/node@14/lib"
export CPPFLAGS="-I/opt/homebrew/opt/node@14/include"

# nvm
brew install nvm;
source $(brew --prefix nvm)/nvm.sh;
echo "source $(brew --prefix nvm)/nvm.sh" >> ~/.profile

npm install -g yarn;


