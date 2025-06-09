# XDG Base Directory
# https://wiki.archlinux.jp/index.php/XDG_Base_Directory

# Docker
export DOCKER_CONFIG="$XDG_CONFIG_HOME"/docker

# npm
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc

# xdg-ninja
# https://github.com/b3nj5m1n/xdg-ninja

# .lesshst
export LESSHISTFILE="$XDG_STATE_HOME"/lesshst
