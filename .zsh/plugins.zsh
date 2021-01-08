source $HOME/.antigen/antigen.zsh

# Plugins
antigen use oh-my-zsh

antigen bundle adb
antigen bundle git
antigen bundle history

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

# Theme
antigen theme gentoo

antigen apply
