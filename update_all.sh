#!/bin/env bash

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
    [8]=scripts
)

# for i in "${home[@]}"; do
# done

for i in "${config[@]}"; do
    files=`find $i -mindepth 1 | tr '\n' ' '`
done
