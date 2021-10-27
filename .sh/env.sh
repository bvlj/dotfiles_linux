# functions
[ -f $HOME/.sh/functions.sh ] && source $HOME/.sh/functions.sh

# OS specific
if [ $(uname) = "Linux" ]; then
    source $HOME/.sh/linux/env.sh
fi

export PATH=$(puniq $PATH)
