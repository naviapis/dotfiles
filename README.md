# dotfiles

## Homebrew

https://brew.sh

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"
```

## mise

```bash
brew install mise
mise bootstrap --from https://github.com/naviapis/dotfiles.git --from-dir ~/src/github.com/naviapis/dotfiles
```
