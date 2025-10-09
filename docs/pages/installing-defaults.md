# Installing defaults

1. Install basic packages

```sh
sudo pacman -S base-devel coreutils git unzip wget openssh neovim htop gdb lldb curl locate tmux whois cronie parallel man-db man-pages
```

and update the `man` database

```sh
sudo mandb
```

2. Change `ParallelDownloads` in `/etc/pacman.conf` to `10`

3. Packages for working with `wslg` (Windows Subsystem For Linux GUI)

```sh
sudo pacman -S pkgconf dbus gtk3 libsoup webkit2gtk alsa-lib tk
```

4. Generate ssh key and put on GitHub

```sh
ssh-keygen -t ed25519 -C "email"
```

5. `git clone` this repo

```sh
git clone git@github.com:marechal-dev/dotfiles.git .dotfiles
```

6. Execute the `setup.sh` to create the symlinks

```sh
./.dotfiles/setup.sh
```

7. Install `yay`

```sh
cd /tmp
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd
```

8. Install `zsh`

```sh
yay -S zsh
```

9. With `sudo`, add `/usr/sbin/zsh` to `/etc/shells` if not already there

10. Set `zsh` as default shell

```sh
chsh -s $(which zsh)
```

11. Install `zsh-autosuggestions`

```sh
cd
mkdir .zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
```

12. Install `oh-my-zsh`

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

13. Install utils

```sh
yay -S bat eza broot ripgrep httpie jq lazydocker navi task fastfetch fzf zoxide fd the_silver_searcher lazygit github-cli procs
```

14. Create directory structure

```sh
chmod +x .dotfiles/create_dir_struct.sh && .dotfiles/create_dir_struct.sh
```

15. Install `mise`

```sh
curl https://mise.run/zsh | sh
```

16. Install languages prerequirements

```sh
chmod +x .dotfiles/install_langs_reqs.sh && .dotfiles/install_langs_reqs.sh
```

17. Install latest LTS version of the languages (use `mise ls-remote <tool-name>` to list versions)

18. Install `lazyvim`

```sh
git clone https://github.com/LazyVim/starter ~/.config/nvim
```

```sh
rm -rf ~/.config/nvim/.git
```

19. Open `nvim` and run `:Lazy!` to install plugins

20. Install research utils

```sh
yay -S texlive gnuplot
```
