# Dotfiles
The configuration files for the system.

## Prequisites
- `git`
- `stow`
- `cargo` (To install rust packages)

### Package Installations (Arch)
```
pacman -Sy git stow neovim 

cargo install kanata
```

### Usage
```
stow --adopt . 
```
