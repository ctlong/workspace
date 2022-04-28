echo
echo "Installing ruby..."
asdf plugin add ruby
asdf install ruby latest
asdf global ruby latest

echo
echo "Installing go..."
asdf plugin add go
asdf install go latest
asdf global go latest
