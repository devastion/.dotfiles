#!/usr/bin/env bash

data=$(curl cheat.sh/java)


echo 'test'
echo "${data}"

alacritty --hold -e curl cheat.sh/java

