#!/bin/bash

if command -v nvim &> /dev/null; then
    exit
fi

# Install Neovim
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt-get update && sudo apt-get install neovim -y

# Install Nerd Font
(
  mkdir -p ~/.local/share/fonts
  cd ~/.local/share/fonts
  curl -fLo "Caskaydia Cove Nerd Font Complete Regular.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/CascadiaCode/Regular/complete/Caskaydia%20Cove%20Nerd%20Font%20Complete%20Regular.otf
)

# Install ripgrep
sudo apt-get install ripgrep -y

# Install NvChad
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
