export TERM="xterm-256color"
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

path=(
    $HOME/.composer/vendor/bin
    $JAVA_HOME/bin
    $HOME/bin
    /usr/local/opt/curl/bin
    /usr/local/bin
    /usr/local/sbin
    $path
)

source ~/.zsh/aliases.zsh
source ~/.zsh/theme.zsh
if [ -d ~/.zsh/private.zsh ]; then
    source ~/.zsh/private.zsh
fi

# Zplugin
# https://github.com/zdharma/zplugin/

### Added by Zplugin's installer
source ~/.dotfiles/zplugin/zplugin.zsh
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin's installer chunk

zplugin ice wait blockf lucid
zplugin light zsh-users/zsh-completions

zplugin ice wait atload"_zsh_autosuggest_start" lucid
zplugin light zsh-users/zsh-autosuggestions

zplugin ice wait atinit"zpcompinit; zpcdreplay" lucid
zplugin light zdharma/fast-syntax-highlighting

# Oh My Zsh
zplugin ice wait lucid
zplugin snippet OMZ::plugins/brew/brew.plugin.zsh

zplugin ice wait lucid
zplugin snippet OMZ::plugins/composer/composer.plugin.zsh

zplugin ice wait lucid
zplugin snippet OMZ::plugins/dotenv/dotenv.plugin.zsh

zplugin ice wait atload"unalias grv" lucid
zplugin snippet OMZ::plugins/git/git.plugin.zsh

zplugin ice wait lucid
zplugin snippet OMZ::plugins/symfony2/symfony2.plugin.zsh

zplugin ice wait lucid
zplugin light jimeh/zsh-peco-history

zplugin light romkatv/powerlevel10k
