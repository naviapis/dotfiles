# dotfiles

## Install Homebrew

https://brew.sh

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"
```

## Install Nix

https://github.com/NixOS/nix-installer

```bash
curl -sSfL https://artifacts.nixos.org/nix-installer | sh -s -- install --enable-flakes
```

## Install Dotfiles

https://github.com/anishathalye/dotbot#installing-your-dotfiles

```bash
git clone https://github.com/naviapis/dotfiles.git ~/.dotfiles
sudo nix run nix-darwin -- switch --flake ~/.dotfiles#<host>
```
