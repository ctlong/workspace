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
echo "Open Spectacle"
open /Applications/Spectacle.app

source ${THIS_DIR}/scripts/git.sh

exit
