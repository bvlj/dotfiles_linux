# aliases
[ -f $HOME/.sh/aliases.sh ] && source $HOME/.sh/aliases.sh

# functions
[ -f $HOME/.sh/functions.sh ] && source $HOME/.sh/functions.sh

# environment variables
export EDITOR="micro"
export CC="$(which gcc)"
export CFLAGS="-Wall -O2 -fstack-protector -D_FORTIFY_SOURCE=2"
# export CPPFLAGS="-Wall -fstack-protector -D_FORTIFY_SOURCE=2"

[ -x $(command -v setopt) ] && setopt nobeep

# OS specific
if [ $(uname) = "Darwin" ]; then
    source $HOME/.sh/darwin/env.sh
else
    source $HOME/.sh/linux/env.sh
fi

export PATH=$(puniq $PATH)
