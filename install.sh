#!/bin/zsh

# Fail immediately on error
set -e

# Cache password
sudo -K
sudo true;
clear

THIS_DIR="$(dirname "$0")"
HOMEBREW_BUNDLE_FILE=${THIS_DIR}/Brewfile

source ${THIS_DIR}/scripts/homebrew.sh
source ${THIS_DIR}/scripts/zsh.sh

echo
echo "Install zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo
echo "Open Spectacle"
open /Applications/Spectacle.app

source ${THIS_DIR}/scripts/git.sh

exit
