# .files
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# adb
alias adbRestart='adb shell stop && adb shell start'

# Chromium
alias chrome="/usr/bin/chromium-browser-privacy"

# git
alias gitpick='git cherry-pick'
alias gitlg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"

# tar
alias tarc='tar -cvzf'
alias tarx='tar -xvzf'
