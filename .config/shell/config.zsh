# AutoCD
setopt auto_cd

# Beep
setopt nobeep

# Compinit
autoload -Uz compinit
compinit -d "$XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION"
zstyle ':completion:*' menu select

# History
HISTFILE="$XDG_STATE_HOME/zsh/history"
HISTSIZE=1000
SAVEHIST=1000
setopt HIST_IGNORE_SPACE

# History search
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search

zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

bindkey -e
bindkey '^[[A' up-line-or-beginning-search
bindkey '^[[B' down-line-or-beginning-search
bindkey '^r' history-incremental-search-backward

# History
setopt share_history
setopt append_history
setopt hist_find_no_dups
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_reduce_blanks

# Jump words
bindkey '^[[H' backward-word
bindkey '^[[F' forward-word
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word

# Delete
bindkey "\e[3~" delete-char

# Theme
autoload -Uz vcs_info
autoload -U add-zsh-hook

vcs_precmd() { vcs_info }

add-zsh-hook precmd vcs_precmd
setopt prompt_subst

zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr '*'
zstyle ':vcs_info:*' stagedstr '+'
zstyle ':vcs_info:*' actionformats '%F{green}(%a%c%u%m)%f '
zstyle ':vcs_info:*' formats '%F{green}(%b%c%u%m)%f '

PROMPT='%B%F{blue}%(!.%1~.%~)%f ${vcs_info_msg_0_}%(!.#.$)%b '

# Title
update_terminal_title() {
  emulate -L zsh
  setopt prompt_subst

  [[ "$EMACS" == *term* ]] && return

  term_title="%20<..<%~%<<"

  case "$TERM" in
    cygwin|xterm*|putty*|rxvt*|ansi)
      print -Pn "\e]2;$term_title:q\a"
      print -Pn "\e]1;$term_title:q\a"
    ;;
    screen*|tmux*)
      print -Pn "\ek$term_title:q\e\\"
    ;;
  esac
}

add-zsh-hook precmd update_terminal_title
