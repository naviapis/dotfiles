if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

HISTFILE="$XDG_STATE_HOME/zsh/zsh_history"

# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/eza
zstyle ':omz:plugins:eza' 'dirs-first' yes
zstyle ':omz:plugins:eza' 'git-status' yes
zstyle ':omz:plugins:eza' 'time-style' long-iso

# https://antidote.sh
fpath=(/opt/homebrew/opt/antidote/share/antidote/functions $fpath)
autoload -Uz antidote
antidote load "$ZDOTDIR/zsh_plugins.txt" "$XDG_CACHE_HOME/zsh/zsh_plugins.zsh"

bindkey '\eq' push-line-or-edit

alias lg='lazygit'
alias vi='nvim'
alias vim='nvim'
alias xdg-ninja='xdg-ninja --skip-unsupported'

[[ -r "$ZDOTDIR/.zshrc.local" ]] && source "$ZDOTDIR/.zshrc.local"
