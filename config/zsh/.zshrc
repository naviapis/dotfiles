# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"

# ghq
# https://github.com/x-motemen/ghq
function ghq-fzf() {
  local selected_dir=$(ghq list | fzf --query="$LBUFFER")

  if [ -n "$selected_dir" ]; then
    BUFFER="cd $(ghq root)/${selected_dir}"
    zle accept-line
  fi

  zle reset-prompt
}

zle -N ghq-fzf
bindkey "^]" ghq-fzf

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"

# Powerlevel10k
# https://github.com/romkatv/powerlevel10k
[[ -f "$XDG_DATA_HOME/fig/plugins/powerlevel10k/config/p10k-classic.zsh" ]] && source "$XDG_DATA_HOME/fig/plugins/powerlevel10k/config/p10k-classic.zsh"
