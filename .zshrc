export PATH=$HOME/bin:/usr/local/sbin:/usr/local/bin:$PATH
export PATH=$(brew --prefix)/opt/coreutils/libexec/gnubin:$PATH

source ~/.antigen/bundles/zsh-users/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle brew
antigen bundle composer
antigen bundle git
antigen bundle npm
antigen bundle symfony2

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme bhilburn/powerlevel9k powerlevel9k

antigen apply


source ~/.zsh/aliases.zsh
source ~/.zsh/lazy-load-nvm.zsh

# Java Development Kit
export JAVA_HOME=$(/usr/libexec/java_home)

eval $(gdircolors ~/.dir_colors)



# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/haruki/.nvm/versions/node/v8.4.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/haruki/.nvm/versions/node/v8.4.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/haruki/.nvm/versions/node/v8.4.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/haruki/.nvm/versions/node/v8.4.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
