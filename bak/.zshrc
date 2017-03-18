setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done


# If you come from bash you might have to change your $PATH.
#export PATH=$HOME/bin:$HOME/.dotfiles/bin:/usr/local/opt/gnu-sed/libexec/gnubin:/usr/local/bin:/usr/local/sbin:$PATH
#export NVM_DIR="$HOME/.nvm"
#. "/usr/local/opt/nvm/nvm.sh"

# Path to your oh-my-zsh installation.
#export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="solarized-powerline"

# Would you like to use another custom folder than $ZSH/custom?
#ZSH_CUSTOM=$HOME/.oh-my-zsh-custom

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(brew composer docker git git-flow npm symfony2 tmux)

#source $ZSH/oh-my-zsh.sh

#alias nw="/Applications/nwjs.app/Contents/MacOS/nwjs"
