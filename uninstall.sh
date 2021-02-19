#!/bin/zsh

# Fail immediately on error
set -e

# Cache password
sudo -K
sudo true;
clear

if hash brew 2>/dev/null; then
  echo
  echo "Uninstalling Homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall.sh)"
  rm -rf /usr/local/Cellar
fi

echo
echo "Reset zshrc"
mv ${HOME}/.zshrc.pre-oh-my-zsh ${HOME}/.zshrc

echo
echo "Delete config files"
pushd ${HOME}
  rm -rf .config .gitconfig .oh-my-zsh .vim .viminfo .vscode .z
popd > /dev/null
