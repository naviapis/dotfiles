export TERM="xterm-256color"
export PYENV_ROOT=$HOME/.pyenv

path=(
    $HOME/.composer/vendor/bin
    $HOME/bin
    /usr/local/bin
    /usr/local/sbin
    $path
)

source ~/.zsh/antigen.zsh
source ~/.zsh/aliases.zsh
source ~/.zsh/lazy-load-nvm.zsh
source ~/.zsh/theme.zsh
if [ -d ~/.zsh-private ]; then
    for f in ~/.zsh-private/*.zsh; do
        source $f
    done
fi

export PATH="$HOME/.rbenv/shims:$PATH"
eval "$(rbenv init -)"

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc
source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc
