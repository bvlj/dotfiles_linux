# .files
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# adb
alias adbRestart='adb shell stop && adb shell start'

# git
alias gitpick='git cherry-pick'
alias gitlg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"

# matlab
if [ $(command -v matlab-cli) ]; then
    alias matlab="matlab-cli -nosplash -nodesktop"
fi

# nix
if [ $(command -v nix-env) ]; then
    alias nix-gc="nix-collect-garbage -d"
    alias nix-search="nix-env -qa"
fi
if [ $(command -v nix-channel) ]; then
    alias nix-chan="nix-channel"
fi

# tar
alias tarc='tar -cvzf'
alias tarx='tar -xvzf'

# yt-dl
if [ $(command -v youtube-dl) ]; then
    alias yt-dl-mp3="youtube-dl --extract-audio --audio-format mp3 -o '%(title)s.%(ext)s'"
fi

# OS specific
if [ $(uname) = "Darwin" ]; then
    source $HOME/.sh/darwin/aliases.sh
else
    source $HOME/.sh/linux/aliases.sh
fi
