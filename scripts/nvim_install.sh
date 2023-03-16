#!/bin/bash

if command -v nvim &> /dev/null; then
    exit
fi

# Install Neovim
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update && sudo apt-get install neovim
nvim

# Install Nerd Font
mkdir -p ~/.local/share/fonts
curl "https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/CascadiaCode.zip" -o "CascadiaCode.zip"
unzip CascadiaCode.zip ~/.local/share/fonts
rm CascadiaCode.zip

# Install ripgrep
sudo apt-get install ripgrep

# Install NvChad
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
