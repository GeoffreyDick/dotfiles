#!/bin/bash

if command -v nvim &> /dev/null; then
    exit
fi

# Install Neovim
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt-get update && sudo apt-get install neovim -y

# Install Nerd Font
mkdir -p ~/.local/share/fonts
curl "https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/CascadiaCode.zip"
unzip CascadiaCode.zip ~/.local/share/fonts
rm CascadiaCode.zip

# Install ripgrep
sudo apt-get install ripgrep -y

# Install NvChad
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
