###################
# Path

# condense PATH entries
puniq () {
    echo "$1" | tr : '\n' | nl | sort -u -k 2,2 | sort -n |
        cut -f 2- | tr '\n' : | sed -e 's/:$//' -e 's/^://'
}

PATH="$HOME/.local/bin:$PATH"
PATH="$HOME/bin:$PATH"

export PATH=$(puniq $PATH)

if [ -f $HOME/.zsh/aliases.zsh ]; then
    source $HOME/.zsh/aliases.zsh
fi

if [ $(uname) != "Darwin" ]; then
    [ -f $HOME/.zsh/android.sh ] && source $HOME/.zsh/android.sh
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=
