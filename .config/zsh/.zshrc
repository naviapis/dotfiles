# Zinit
# https://github.com/zdharma/zinit
source ~/.zinit/bin/zinit.zsh

autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit


# anyenv-lazyload
# https://github.com/amashigeseiji/anyenv-lazyload
eval "$(anyenv lazyload)"


# A command-line fuzzy finder
# https://github.com/junegunn/fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
