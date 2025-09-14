# dotfiles

## Homebrew

https://brew.sh/ja/

```bash
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
$ eval "$(/opt/homebrew/bin/brew shellenv)"
```

## chezmoi

https://www.chezmoi.io/

```bash
$ brew install chezmoi
$ chezmoi init https://github.com/naviapis/dotfiles.git
$ chezmoi apply -v
```

## Homebrew Bundle

```bash
$ brew bundle --global
```

## mise-en-place

https://mise.jdx.dev/

```bash
$ mise link php@brew $(brew --prefix php)
```
