# load zgen
source "${HOME}/.zgen/zgen.zsh"

# if the init scipt doesn't exist
if ! zgen saved; then
  echo "Creating a zgen save"

  # prezto options
  zgen prezto editor key-bindings 'emacs'
  zgen prezto prompt theme 'agnoster'

  # prezto and modules
  zgen prezto
  zgen prezto git
  zgen prezto command-not-found
  zgen prezto syntax-highlighting

  # save all to init script
  zgen save
fi
