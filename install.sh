#!/bin/bash

function slink {
    ln -snf $1 $2
    echo "linked '$1' to '$2'"
}

SCRIPT_PATH=$(realpath $0)
DIR=$(dirname $SCRIPT_PATH)
CONFIG="$HOME/.config"

declare -a home=(
    [0]='bash/.bashrc'
    [1]='wezterm/.wezterm.lua'
)
declare -a config=(
    [0]=clangd
    [1]=kanata
    [2]=kitty
    [3]=nvim
    [4]=VSCodium
    [5]=fastfetch
    [6]=tmux
    [7]=sway
)

for i in "${home[@]}"; do
    slink $(realpath $i) $HOME
done

for i in "${config[@]}"; do
    slink $(realpath $i) $CONFIG
done
