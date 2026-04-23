(( ${+commands[direnv]} )) && emulate zsh -c "$(direnv export zsh)"

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

(( ${+commands[direnv]} )) && emulate zsh -c "$(direnv hook zsh)"

HISTFILE="$XDG_STATE_HOME/zsh/zsh_history"

path=(
  $HOME/.local/bin(N-/)
  $path
)

# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/eza
zstyle ':omz:plugins:eza' 'dirs-first' yes
zstyle ':omz:plugins:eza' 'git-status' yes
zstyle ':omz:plugins:eza' 'time-style' long-iso

# https://antidote.sh
fpath=(/run/current-system/sw/share/antidote/functions $fpath)
autoload -Uz antidote
antidote load "$ZDOTDIR/zsh_plugins.txt" "$XDG_CACHE_HOME/zsh/zsh_plugins.zsh"

alias nds='nh darwin switch ~/.dotfiles -H $(hostname)'
alias vi='nvim'
alias vim='nvim'
alias xdg-ninja='xdg-ninja --skip-unsupported'
