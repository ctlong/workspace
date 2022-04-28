#!/bin/zsh

# Fail immediately on error
set -e

THIS_DIR="$(dirname "$0")"
HOMEBREW_BUNDLE_FILE=${THIS_DIR}/Brewfile

source ${THIS_DIR}/scripts/homebrew.sh
source ${THIS_DIR}/scripts/langs.sh
source ${THIS_DIR}/scripts/zsh.sh

echo
echo "Configuring neovim with Luan's config"
git clone https://github.com/luan/nvim ${HOME}/.config/nvim

source ${THIS_DIR}/scripts/git.sh

exit

