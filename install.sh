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
source ${THIS_DIR}/scripts/langs.sh
source ${THIS_DIR}/scripts/zsh.sh

echo
echo "Open Spectacle"
open /Applications/Spectacle.app

echo "Configuring iTerm"
# cp files/com.googlecode.iterm2.plist ~/Library/Preferences

echo
echo "Configuring neovim with Luan's config"
git clone https://github.com/luan/nvim ${HOME}/.config/nvim

source ${THIS_DIR}/scripts/git.sh
source ${THIS_DIR}/scripts/osx.sh

exit
