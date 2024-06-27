#!/usr/bin/env bash

# choose which modes' default keybinds you want to unbind
# (prefix root copy-mode copy-mode-vi)
TMUX_MODES=(prefix)
for table in "${TMUX_MODES[@]}"; do
  tmux unbind -a -T "$table"
done
