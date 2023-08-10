[ -f "$HOME/.profile" ] && source "$HOME/.profile"

export ZSH="$XDG_CONFIG_HOME/shell"

[ -f "$ZSH/plugins.zsh" ] && source "$ZSH/plugins.zsh"
[ -f "$ZSH/config.zsh" ] && source "$ZSH/config.zsh"
[ -f "$ZSH/env.sh" ] && source "$ZSH/env.sh"
