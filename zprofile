#!/bin/sh

export EDITOR="nvim"
export TERMINAL="st"

export PATH=~/.local/.npm-global/bin:$PATH

export XINITRC="${XDG_COMNFIG_HOME:-$HOME}/.config/x11/xinitrc"

[ "$(tty)" = "/dev/tty1" ] && ! pidof -s Xorg >/dev/null 2>&1 && exec startx "$XINITRC"
