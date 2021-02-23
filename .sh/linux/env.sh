# PATH
if [ -e "$HOME/.local/bin" ]; then
    PATH="$PATH:$HOME/.local/bin"
fi

# android
[ -f $HOME/.sh/android.sh ] && source $HOME/.sh/android.sh
