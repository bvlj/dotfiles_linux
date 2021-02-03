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

if [ $(which youtube-dl 2> /dev/null) ]; then
    alias yt-dl-mp3="youtube-dl --extract-audio --audio-format mp3 -o '%(title)s.%(ext)s'"
fi

if [ $(which pg_ctl 2> /dev/null) ]; then
    alias postgres-start="pg_ctl -D /usr/local/var/postgres start"
    alias postgres-stop="pg_ctl -D /usr/local/var/postgres stop"
fi
