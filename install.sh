#!/bin/bash

# Fail immediately on error
set -e

# Cache password
sudo -K
sudo true;
clear

# Install Command Line Tools for Xcode
xcode-select --install

# Export the location of this directory
THIS_DIR="$(dirname "$0")"
export THIS_DIR

# Homebrew

## Install if not installed
echo
if hash brew 2>/dev/null; then
  echo "Homebrew is already installed!"
else
  echo "Installing Homebrew..."
  NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

## Load bundle
brew bundle --file "${THIS_DIR}/Brewfile"

# oh-my-zsh

## Install if not installed
echo
echo "Configuring zsh with oh-my-zsh..."
if [[ -d "${HOME}/.oh-my-zsh" ]]; then
  echo "oh-my-zsh already installed"
else
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

## Copy configuration
echo
echo "Copying zshrc..."
cp "${THIS_DIR}/files/.zshrc" ~/.zshrc

## Install zsh-autosuggestions
echo
echo "Installing zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"

# git

echo
echo "Setting global Git configurations"
git config --global core.editor /usr/local/bin/nvim
git config --global pull.rebase true

echo
echo "Setting up Git aliases..."
git config --global alias.st status
git config --global alias.co checkout
git config --global alias.cp cherry-pick
git config --global alias.lola "log --graph --decorate --oneline --all"
git config --global alias.ds "diff --staged"
