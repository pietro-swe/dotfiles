function create_symlinks {
  ln -s ~/.dotfiles/.zshrc ~/.zshrc
  ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
}
create_symlinks
echo "[Setup] Symlinks created."

echo "[Setup] Creating directory structure..."
chmod +x $HOME/.dotfiles/scripts/create_dir_struct.sh
$HOME/.dotfiles/scripts/create_dir_struct.sh

echo "[Setup] Installing language requirements..."
chmod +x $HOME/.dotfiles/scripts/install_langs_reqs.sh
$HOME/.dotfiles/scripts/install_langs_reqs.sh

echo "[Setup] Installing utils. packages..."
chmod +x $HOME/.dotfiles/scripts/install_utils.sh
$HOME/.dotfiles/scripts/install_utils.sh

echo "[Setup] Setup complete :)"
