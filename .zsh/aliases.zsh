# Dotfiles
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Adb
alias adbRestart='adb shell stop && adb shell start'

# Git
alias gitpick='git cherry-pick'
alias gitlg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"

if [ $(uname) = "Darwin" ]; then
    # Android-like croot
    alias croot='cd "./$(git rev-parse --show-cdup 2>/dev/null)" 2>/dev/null'
    # Sed
    alias sed="gsed"
else
    # Chromium
    alias chrome="/usr/bin/chromium-browser-privacy"
fi

# Tar
alias tarc='tar -cvzf'
alias tarx='tar -xvzf'

# Programs

if [ $(which matlab-cli 2> /dev/null) ]; then
    alias matlab="matlab-cli -nosplash -nodesktop"
fi
