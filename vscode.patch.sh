#!/usr/bin/env bash
TARGET=/opt/visual-studio-code/bin/code
# Read user flags
sed -i '\#CLI=#a USERFLAGS="$(/etc/pacman.d/hooks/userflags.sh vscode)"' $TARGET
# Append flags on command line
sed -i 's/"$@"/"$USERFLAGS" "$@"/' $TARGET
