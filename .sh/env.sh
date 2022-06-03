###
# Aliases

# .files
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
# adb
alias adbRestart='adb shell stop && adb shell start'
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

###
# Session variables
export EDITOR="micro"

###
# Path
[ -e "$HOME/.local/bin" ] && PATH="$PATH:$HOME/.local/bin"
[ -e "$HOME/.sh/scripts" ] && PATH="$PATH:$HOME/.sh/scripts"
