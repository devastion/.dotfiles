#!/usr/bin/env bash

# TODO: Refactor code

FLOAT=false

while getopts "f" opt; do
  case $opt in
  f)
    FLOAT=true
    ;;
  \?)
    echo "Invalid option: -$OPTARG" >&2
    ;;
  esac
done

function cycle_floating() {
  FLOATING_WINDOWS=$(yabai -m query --windows --space | jq '.[] | select(.["is-floating"] == true)')

  yabai -m window --focus "$(
    yabai -m query --windows --space |
      jq -re "sort_by(.frame) | map(.id) | nth(1 + index($(
        yabai -m query --windows --window | jq '.id'
      ))) // first"
  )"
}

function cycle_non_floating() {
  echo "cycle non floating"
}

if "${FLOAT}"; then
  cycle_floating
else
  cycle_non_floating
fi
