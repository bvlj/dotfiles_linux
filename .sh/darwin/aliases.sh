# Android-like croot
alias croot='cd "./$(git rev-parse --show-cdup 2>/dev/null)" 2>/dev/null'