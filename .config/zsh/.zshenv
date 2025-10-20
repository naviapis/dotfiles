# XDG Base Directory
# https://wiki.archlinux.jp/index.php/XDG_Base_Directory
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_STATE_HOME="${HOME}/.local/state"

# Docker
export DOCKER_CONFIG="${XDG_CONFIG_HOME}/docker"

# npm
export NPM_CONFIG_INIT_MODULE="${XDG_CONFIG_HOME}/npm/config/npm-init.js"
export NPM_CONFIG_CACHE="${XDG_CACHE_HOME}/npm"

# less
export LESSHISTFILE="${XDG_STATE_HOME}/lesshst"

# Serena
export SERENA_HOME="${XDG_CONFIG_HOME}/serena"
