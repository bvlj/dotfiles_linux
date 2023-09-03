###
# Aliases

# .files
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
# adb
alias adb-restart='adb shell stop && adb shell start'
# cd
alias '...'='cd ../..'
alias '....'='cd ../../..'
# git
alias gitpick='git cherry-pick'
alias gitlg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
# grep
alias grep='grep --color=auto'
# ls
alias ls='ls -1'
# open
alias open='xdg-open'
# rand-str
alias rand-str="LC_ALL=C tr -dc 'A-Za-z0-9!#$%&~' < /dev/urandom | head -c $1"
# clipboard (macos-like)
alias pbcopy="xclip -selection c"
alias pbpaste="xclip -selection c -o"


###
# Session variables
export EDITOR="micro"
export JAVA_HOME="/usr/lib/jvm/temurin-17-jdk"

###
# Path
[ -e "$XDG_CONFIG_HOME/shell/scripts" ] && PATH="$PATH:$XDG_CONFIG_HOME/shell/scripts"
