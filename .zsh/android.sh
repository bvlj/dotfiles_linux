if [[ ! -f $(pwd)/build/envsetup.sh ]]; then
    return
fi

echo "Loading android env..."

setopt shwordsplit

export WITH_CCACHE=true
export CCACHE_DIR="$HOME/android/.ccache/$(basename $(pwd))"
export WITH_GMS=true
# export _JAVA_OPTIONS=-XX:ParrallelGCThreads=4

source build/envsetup.sh > /dev/null
# clear