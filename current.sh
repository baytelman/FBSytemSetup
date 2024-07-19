#!/bin/bash

# Disable charging chime –– Annoying if you have Apple Watch and your Mac is plugged to an external monitor
defaults write com.apple.PowerChime ChimeOnNoHardware -bool true; killall PowerChime

# Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# System utilities
## Asimov – Prevent development caches to be included in backups
brew reinstall asimov
sudo brew services start asimov
brew reinstall --cask monitorcontrol

# My apps
brew reinstall visual-studio-code;
brew reinstall sourcetree;
brew reinstall google-chrome;
brew reinstall figma;
brew reinstall --cask dropbox;
brew reinstall docker
brew reinstall --cask docker;

# Database clients
brew reinstall pgadmin4
brew reinstall dbeaver-community
brew reinstall robo-3t;

# comm
brew reinstall whatsapp
brew reinstall slack
brew reinstall --cask discord;

# Fun
brew reinstall spotify

# node
brew reinstall node@16;
brew reinstall npm;
# Add to sh
echo 'export PATH="/opt/homebrew/opt/node@14/bin:$PATH"' >> ~/.zshrc
export LDFLAGS="-L/opt/homebrew/opt/node@14/lib"
export CPPFLAGS="-I/opt/homebrew/opt/node@14/include"

# nvm
brew reinstall nvm;
source $(brew --prefix nvm)/nvm.sh;
echo "source $(brew --prefix nvm)/nvm.sh" >> ~/.zprofile

npm install -g yarn;

# gif
brew reinstall ffmpeg;
brew reinstall gifsicle;

echo 'gif() {
    ffmpeg -i $1 $1.gif -filter_complex "[0:v] mpdecimate,fps=3,split [a][b];[a] palettegen=max_colors=48 [p];[b][p] paletteuse=dither=none " && gifsicle -O3 $1.gif -o $1.gif
}' >> ~/.zprofile;

source ~/.zprifile;


