#!/usr/bin/env bash
APP="$1"
XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"

# Allow users to override command-line options
FLAGS_FILE="$XDG_CONFIG_HOME/$APP-flags.conf"
if [[ -f $FLAGS_FILE ]]; then
   USER_FLAGS="$(cat $FLAGS_FILE | sed 's/#.*//')"
fi

echo $USER_FLAGS
