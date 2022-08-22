if [[ -z $DISPLAY ]] && [[ $(tty) == /dev/tty1 && !MY_GS_WATCHDOG -eq 1 ]]; then
  MY_GS_WATCHDOG=1 XDG_SESSION_TYPE=wayland exec dbus-run-session gnome-session
else
  export ZSH="$HOME/.sh"

  [ -f $ZSH/config.zsh ] && source $ZSH/config.zsh
  [ -f $ZSH/env.sh ] && source $ZSH/env.sh
fi
