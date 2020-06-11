# Powerlevel10k
# https://github.com/romkatv/powerlevel10k
zinit ice depth=1
zinit light romkatv/powerlevel10k

# Solarized Color Theme for GNU ls
# https://github.com/seebi/dircolors-solarized
eval $(gdircolors ~/.dircolors)

export TERM="xterm-256color"

alias ls='gls --color=auto'
