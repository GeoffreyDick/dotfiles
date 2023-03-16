#!/bin/bash

if command -v nvim &> /dev/null; then
    exit
fi

# Install Neovim
curl "https://github.com/neovim/neovim/releases/download/v0.8.3/nvim-linux64.tar.gz" -o "nvim-linux64.tar.gz"
tar xzvf nvim-linux64.tar.gz
sudo ./nvim-linux64/bin/nvim

# Install Nerd Font
mkdir -p ~/.local/share/fonts
curl "https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/CascadiaCode.zip" -o "CascadiaCode.zip"
unzip CascadiaCode.zip ~/.local/share/fonts
rm CascadiaCode.zip

# Install ripgrep
sudo apt-get install ripgrep

# Install NvChad
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
