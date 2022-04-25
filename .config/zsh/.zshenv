setopt no_global_rcs

export GOPATH=$HOME/go

path=(
  $HOME/.anyenv/bin
  $GOPATH/bin
  $HOME/bin
  /usr/local/sbin
  /usr/local/bin
  $path
)

# Allow creation of zcompdump in a custom directory
# https://github.com/ohmyzsh/ohmyzsh/issues/7332
if [ ! -d "$XDG_CACHE_HOME/zsh" ]; then
    mkdir -p $XDG_CACHE_HOME/zsh
fi

export ZSH_COMPDUMP="$XDG_CACHE_HOME/zsh/zcompdump-$HOST-$ZSH_VERSION"
