# Java Development Kit
export JAVA_HOME=$(/usr/libexec/java_home)

eval $(gdircolors ~/.dir_colors)

# Lazy load nvm
export NVM_DIR=$HOME/.nvm

nvm() {
  unset -f nvm
  . $(brew --prefix)/opt/nvm/nvm.sh
  nvm "$@"
}

node() {
  unset -f node
  . $(brew --prefix)/opt/nvm/nvm.sh
  node "$@"
}

npm() {
  unset -f npm
  . $(brew --prefix)/opt/nvm/nvm.sh
  npm "$@"
}

yarn() {
  unset -f yarn
  . $(brew --prefix)/opt/nvm/nvm.sh
  yarn "$@"
}
