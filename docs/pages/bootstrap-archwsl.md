# Steps to bootstrap the ArchWSL

1. Download the [latest version of ArchWSL](https://github.com/yuk7/ArchWSL/releases/latest)
2. Unzip the file at the Windows Root (`C:`)
3. On an Elevated PowerShell, execute the `.\Arch.exe` command and wait to complete
4. Execute `.\Arch.exe` again and configure the `root` password

```sh
passwd
```

5. Setup `sudoers` file

```sh
echo "%wheel ALL=(ALL) ALL" > /etc/sudoers.d/wheel
```

6. Add user

```sh
useradd -m -G wheel -s /bin/bash pietro-swe
```

7. Setup the password and exit

```sh
passwd pietro-swe
```

```sh
exit
```

8. On PowerShell, setup the default user

```powershell
.\Arch.exe config --default-user marechal-dev
```

9. On Arch, Initialize the keyring

```sh
sudo pacman-key --init
```

10. Populate it

```sh
sudo pacman-key --populate
```

11. Install the keyring

```sh
sudo pacman -Sy archlinux-keyring
```

12. Run a full system update

```sh
sudo pacman -Syyuu
```
