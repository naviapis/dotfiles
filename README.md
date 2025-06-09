# dotfiles

## Homebrew

https://brew.sh/ja/

```bash
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
$ echo > $HOME/.zprofile
$ echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' > $HOME/.zprofile
$ eval "$(/opt/homebrew/bin/brew shellenv)"
```

## chezmoi

https://www.chezmoi.io/

```bash
$ brew install chezmoi
$ chezmoi init https://github.com/naviapis/dotfiles.git
$ chezmoi apply
```

## dropignore

https://github.com/mweirauch/dropignore

```bash
$ launchctl unload ~/Library/LaunchAgents/com.user.dropignore.plist 2>/dev/null || true
$ launchctl load   ~/Library/LaunchAgents/com.user.dropignore.plist
$ launchctl list com.user.dropignore
```

## mise-en-place

https://mise.jdx.dev/

```bash
$ mise link php@7.3 /opt/homebrew/opt/php@7.3
$ mise link php@7.4 /opt/homebrew/opt/php@7.4
$ mise link php@latest /opt/homebrew/opt/php@8.4
$ mise-x64 install node@10
```
