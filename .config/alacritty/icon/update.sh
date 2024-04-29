#!/bin/bash

set -eo pipefail

ICON_PATH=/Applications/Alacritty.app/Contents/Resources/alacritty.icns
ICON_DOWNLOAD_URL=https://github.com/devastion/.dotfiles/raw/main/.config/alacritty/icon/alacritty.icns.gz

curl -sL $ICON_DOWNLOAD_URL | gunzip > "$ICON_PATH"

touch /Applications/Alacritty.app
killall Finder
killall Dock
