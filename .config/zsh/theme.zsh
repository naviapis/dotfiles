# Solarized Color Theme for GNU ls
# https://github.com/seebi/dircolors-solarized
eval $(gdircolors ~/.dircolors)

export TERM="xterm-256color"

alias ls='gls --color=auto'
