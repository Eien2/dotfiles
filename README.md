# Eien Dotfiles

![Dotfiles tree](https://github.com/Eien2/dotfiles/blob/main/dotfiles-tree.png?raw=true)

## Installing

Git Clone ***You Need To Have Git Installed !!!***
```bash
git clone https://github.com/Eien2/dotfiles.git
cd dotfiles
```
Or
[Download a Zip](https://github.com/Eien2/dotfiles/archive/refs/heads/main.zip) unpack it and cd into folder

### Download stow

Ubuntu Based
```bash
apt install stow
```
Fedora Based
```bash
dnf install stow
```
Arch Based
```bash
pacman -S stow
```

### After installed stow cd into dotfiles directory and run
```bash
stow -v -R -t ~ name-of-directory-to-stow
```

## Additional Info

- [Stow Wiki](https://man.archlinux.org/man/stow.8)
- [Git Doc](https://git-scm.com/docs)
- ***You Can't Stow LightDM***
- ***Bash Is Not Currently Maintained***

### Author [Eien](https://github.com/Eien2)
