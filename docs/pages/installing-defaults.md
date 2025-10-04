# Installing defaults

1. Basic packages

```sh
sudo pacman -S base-devel coreutils git unzip wget openssh neovim htop the_silver_searcher lazygit github-cli
```

then install `man`

```sh
sudo pacman -S man-db man-pages
```

and update the `man` database

```sh
sudo mandb
```

2. Packages for working with `wslg` (Windows Subsystem For Linux GUI)

```sh
sudo pacman -S pkgconf dbus gtk3 libsoup webkit2gtk alsa-lib tk
```

3. Generate ssh key

```sh
ssh-keygen -t ed25519 -C "email"
```

4. `git clone` this repo

```sh
git clone git@github.com:marechal-dev/dotfiles.git .dotfiles
```

5. Execute the `setup.sh` to create the symlinks

```sh
./.dotfiles/setup.sh
```

6. Install `yay`

```sh
cd /tmp
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd
```

7. Install `zsh`

```sh
yay -S zsh
```

8. Add `/usr/sbin/zsh` to `/etc/shells` if not already there

9. Set `zsh` as default shell

```sh
chsh -s $(which zsh)
```

10. Install `zsh-autosuggestions`

```sh
cd
mkdir .zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
```

11. Install `oh-my-zsh`

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

12. Install utils

```sh
yay -S bat eza broot fd ripgrep httpie jq tlrc-bin lazydocker lazygit gdb navi task fastfetch fzf zoxide fd
```

13. Create directory structure

```sh
chmod +x .dotfiles/create_dir_struct.sh && .dotfiles/create_dir_struct.sh
```

14. Install `mise`

```sh
curl https://mise.run/zsh | sh
```

15. Install languages prerequirements

```sh
chmod +x .dotfiles/install_langs_reqs.sh && .dotfiles/install_langs_reqs.sh
```

16. Install latest LTS version of the languages (use `asdf list all <plugin-name>` to list versions)

17. Install `lazyvim`

```sh
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
```
