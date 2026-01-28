#!/bin/bash

function slink {
    ln -snf $1 $2
    echo "linked '$1' to '$2'"
}

SCRIPT_PATH=$(realpath $0)
DIR=$(dirname $SCRIPT_PATH)
CONFIG="$HOME/.config"

bash_path="$DIR/bash/.bashrc"
clangd_path="$DIR/clangd"
kanata_path="$DIR/kanata"
kitty_path="$DIR/kitty"
nvim_path="$DIR/nvim"
wezterm_path="$DIR/wezterm/.wezterm.lua"
vscodium_path="$DIR/vscodium"
fastfetch_path="$DIR/fastfetch"
tmux_path="$DIR/tmux"
sway_path="$DIR/sway"

bash_target="$HOME/.bashrc"
clangd_target="$HOME/.config/clangd"
kanata_target="$HOME/.config/kanata"
kitty_target="$HOME/.config/kitty"
nvim_target="$HOME/.config/nvim"
wezterm_target="$HOME/.wezterm.lua"
vscodium_target="$HOME/.config/VSCodium/User"
fastfetch_target="$HOME/.config/fastfetch"
tmux_target="$HOME/.config/tmux"
sway_target="$HOME/.config/sway"

slink $bash_path $bash_target

slink $clangd_path $clangd_target

slink $kanata_path $kanata_target

slink $kitty_path $kitty_target

slink $nvim_path $nvim_target

slink $wezterm_path $wezterm_target

slink $vscodium_path"/settings.json" $vscodium_target"/settings.json"
slink $vscodium_path"/keybindings.json" $vscodium_target"/keybindings.json"

slink $fastfetch_path $fastfetch_target

slink $tmux_path $tmux_target

slink $sway_path $sway_target
