# Antigen
# http://antigen.sharats.me/
source ~/.antigen/bundles/zsh-users/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle brew
antigen bundle composer
antigen bundle git
antigen bundle npm
antigen bundle symfony2

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme bhilburn/powerlevel9k powerlevel9k

antigen apply
