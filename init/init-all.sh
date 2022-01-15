#!/bin/bash

# Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# System utilities
## Asimov – Prevent development caches to be included in backups
brew install asimov
sudo brew services start asimov

# My apps
brew install visual-studio-code;
brew install sourcetree;
brew install google-chrome;
brew install figma;

# Database clients
brew install pgadmin4
brew install dbeaver-community
brew install robo-3t;

# comm
brew install whatsapp
brew install slack

# Fun
brew install spotify

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


