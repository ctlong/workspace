echo
echo "Configuring zsh with oh-my-zsh..."
if [[ -d "${HOME}/.oh-my-zsh" ]]; then
  echo "oh-my-zsh already installed"
else
  echo '' | sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

echo
echo "Copying zshrc..."
cp files/.zshrc ~/.zshrc
