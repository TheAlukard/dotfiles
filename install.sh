#!/bin/bash

bash_path="$PWD/bash/.bashrc"
clangd_path="$PWD/clangd"
kanata_path="$PWD/kanata/kanata.kbd"
kitty_path="$PWD/kitty"
nvim_path="$PWD/nvim"
wezterm_path="$PWD/wezterm/.wezterm.lua"
vscodium_path="$PWD/vscodium"

bash_target="$HOME/.bashrc"
clangd_target="$HOME/.config/clangd"
kanata_target="$HOME/.config/kanata.kbd"
kitty_target="$HOME/.config/kitty"
nvim_target="$HOME/.config/nvim"
wezterm_target="$HOME/.wezterm.lua"
vscodium_target="$HOME/.config/VSCodium/User"

function symlink {
    echo "linking '$1' to '$2'"
    ln -snf $1 $2
}

symlink $bash_path $bash_target

symlink $clangd_path $clangd_target

symlink $kanata_path $kanata_target

symlink $kitty_path $kitty_target

symlink $nvim_path $nvim_target

symlink $wezterm_path $wezterm_target

symlink $vscodium_path"/settings.json" $vscodium_target"/settings.json"
symlink $vscodium_path"/keybindings.json" $vscodium_target"/keybindings.json"
