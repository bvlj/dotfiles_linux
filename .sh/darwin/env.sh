# PATH
if [ -d "$HOME/Library/Android/sdk/" ]; then
    PATH="$PATH:$HOME/Library/Android/sdk/build-tools/30.0.3"
    PATH="$PATH:$HOME/Library/Android/sdk/platform-tools"
fi

if [ -d "$HOME/.nix-profile/bin" ]; then
    PATH="$HOME/.nix-profile/bin:$PATH"
fi

# android
export ANDROID_HOME="$HOME/Library/Android/sdk"

# java
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-11.0.2.jdk/Contents/Home"
