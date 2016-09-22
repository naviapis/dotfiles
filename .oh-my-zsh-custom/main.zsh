# zsh-syntax-highlighting
if [ -e $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
    source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# Ruby
if $(brew ls --versions ruby &> /dev/null); then
    export PATH="$(brew --prefix ruby)/bin:$PATH"
fi

# PHP
if $(brew ls --versions php56 &> /dev/null); then
    export PATH="$(brew --prefix homebrew/php/php56)/bin:$PATH"
fi

# Java Development Kit
export JAVA_HOME=$(/usr/libexec/java_home)

# Android SDK
if $(brew ls --versions android-sdk &> /dev/null); then
    export ANDROID_HOME=$(brew --prefix android-sdk)
fi

eval `gdircolors $HOME/.dircolors`
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
