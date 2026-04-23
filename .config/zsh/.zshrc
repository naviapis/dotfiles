if [[ -r "$XDG_CACHE_HOME/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "$XDG_CACHE_HOME/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/eza
zstyle ':omz:plugins:eza' 'dirs-first' yes
zstyle ':omz:plugins:eza' 'git-status' yes
zstyle ':omz:plugins:eza' 'time-style' long-iso

bundlefile="$ZDOTDIR/.zsh_plugins.txt"
staticfile="$XDG_CACHE_HOME/zsh/zsh_plugins.zsh"

fpath=(/run/current-system/sw/share/antidote/functions $fpath)
autoload -Uz antidote

if [[ ! $staticfile -nt $bundlefile ]]; then
  antidote bundle <$bundlefile >|$staticfile
fi

source $staticfile

alias lg='lazygit'
alias lzd='lazydocker'
alias vi='nvim'
alias vim='nvim'
alias xdg-ninja='xdg-ninja --skip-unsupported'
