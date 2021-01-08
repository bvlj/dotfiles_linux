[ $(uname) = "Darwin" ] && IS_DARWIN=true || IS_DARWIN=false

###################
# Path

# condense PATH entries
puniq () {
    echo "$1" | tr : '\n' | nl | sort -u -k 2,2 | sort -n |
        cut -f 2- | tr '\n' : | sed -e 's/:$//' -e 's/^://'
}

if [ IS_DARWIN ]; then
    # Android tools
    PATH="$HOME/Library/Android/sdk/build-tools/30.0.3:$PATH"
    # LLVM
    PATH="/usr/local/opt/llvm/bin:$PATH"
fi

# Shebangs
PATH="$ZSH/shebangs:$PATH"

export PATH=$(puniq $PATH)

###################
# Env vars

# C(++)
export CC="$(which gcc)"
export CFLAGS="-Wall -O2 -fstack-protector -D_FORTIFY_SOURCE=2"
# export CPPFLAGS="-Wall -fstack-protector -D_FORTIFY_SOURCE=2"

# Darwin
if [ IS_DARWIN ]; then
    # Android
    export ANDROID_HOME="$HOME/Library/Android/sdk"
    # Java
    export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-11.0.2.jdk/Contents/Home"
fi

###################
# Extra

setopt nobeep

if [ -f $HOME/.zsh/aliases.zsh ]; then
    source $HOME/.zsh/aliases.zsh
fi

if [ -f $HOME/.zsh/functions.zsh ]; then
    source $HOME/.zsh/functions.zsh
fi

if [ ! IS_DARWIN ]; then
    [ -f $HOME/.zsh/android.sh ] && source $HOME/.zsh/android.sh
fi
