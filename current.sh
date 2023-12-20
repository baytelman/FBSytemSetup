#!/bin/bash

# Disable charging chime –– Annoying if you have Apple Watch and your Mac is plugged to an external monitor
defaults write com.apple.PowerChime ChimeOnNoHardware -bool true; killall PowerChime

# Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# System utilities
## Asimov – Prevent development caches to be included in backups
brew install asimov
sudo brew services start asimov
brew install --cask monitorcontrol

# My apps
brew install visual-studio-code;
brew install sourcetree;
brew install google-chrome;
brew install figma;
brew install --cask dropbox;
brew install docker
brew install --cask docker;

# Database clients
brew install pgadmin4
brew install dbeaver-community
brew install robo-3t;

# comm
brew install whatsapp
brew install slack
brew install --cask discord;

# Fun
brew install spotify

# node
brew install node@16;
brew install npm;
# Add to sh
echo 'export PATH="/opt/homebrew/opt/node@14/bin:$PATH"' >> ~/.zshrc
export LDFLAGS="-L/opt/homebrew/opt/node@14/lib"
export CPPFLAGS="-I/opt/homebrew/opt/node@14/include"

# nvm
brew install nvm;
source $(brew --prefix nvm)/nvm.sh;
echo "source $(brew --prefix nvm)/nvm.sh" >> ~/.zprofile

npm install -g yarn;

# gif
brew install ffmpeg;
brew install gifsicle;

echo 'gif() {
    ffmpeg -i $1 $1.gif -filter_complex "[0:v] mpdecimate,fps=3,split [a][b];[a] palettegen=max_colors=48 [p];[b][p] paletteuse=dither=none " && gifsicle -O3 $1.gif -o $1.gif
}' >> ~/.zprofile;

source ~/.zprifile;


