source ~/.zsh/antigen.zsh
source ~/.zsh/aliases.zsh
source ~/.zsh/lazy-load-nvm.zsh
if [ -f ~/.zsh/private.zsh ]; then
    source ~/.zsh/private.zsh
fi

path=(
    $HOME/.composer/vendor/bin
    $HOME/bin
    /usr/local/sbin
    /usr/local/bin
    $path
)

export TERM="xterm-256color"

# Powerlevel9k
# https://github.com/bhilburn/powerlevel9k
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)

# Java Development Kit
export JAVA_HOME=$(/usr/libexec/java_home)

eval $(gdircolors ~/.dir_colors)
