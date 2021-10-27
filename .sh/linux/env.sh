# PATH
if [ -e "$HOME/.local/bin" ]; then
    PATH="$PATH:$HOME/.local/bin"
fi

export EDITOR="micro"
export CC="$(which gcc)"
export CFLAGS="-Wall -O2 -fstack-protector -D_FORTIFY_SOURCE=2"
# export CPPFLAGS="-Wall -fstack-protector -D_FORTIFY_SOURCE=2"

# android
[ -f $HOME/.sh/linux/android.sh ] && source $HOME/.sh/linux/android.sh

# aliases
[ -f $HOME/.sh/linux/aliases.sh ] && source $HOME/.sh/linux/aliases.sh

