# .files
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# adb
alias adbRestart='adb shell stop && adb shell start'

# git
alias gitpick='git cherry-pick'
alias gitlg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"

# matlab
if [ -x $(command -v matlab-cli) ]; then
    alias matlab="matlab-cli -nosplash -nodesktop"
fi

# nix
if [ -x $(command -v nix-env) ]; then
    alias nix-cfg="$EDITOR ~/.nixpkgs/darwin-configuration.nix"
    alias nix-gc="nix-collect-garbage -d"
    alias nix-search="nix-env -qaP"
    alias nix-update="nix-env -u"
    alias nix-upgrade="sudo -i sh -c 'nix-channel --update && nix-env -iA nixpkgs.nix"
fi

# tar
alias tarc='tar -cvzf'
alias tarx='tar -xvzf'

# yt-dl
if [ -x $(command -v youtube-dl) ]; then
    alias yt-dl-mp3="youtube-dl --extract-audio --audio-format mp3 -o '%(title)s.%(ext)s'"
fi

# OS specific
if [ $(uname) = "Darwin" ]; then
    source $HOME/.sh/darwin/aliases.sh
else
    source $HOME/.sh/linux/aliases.sh
fi
