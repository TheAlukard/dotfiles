#!/bin/bash

function symlink {
    ln -snf $1 $2
    echo "linked '$1' to '$2'"
}

DIR="$HOME/dotfiles" 

bash_path="$DIR/bash/.bashrc"
clangd_path="$DIR/clangd"
kanata_path="$DIR/kanata/kanata.kbd"
kitty_path="$DIR/kitty"
nvim_path="$DIR/nvim"
wezterm_path="$DIR/wezterm/.wezterm.lua"
vscodium_path="$DIR/vscodium"
fastfetch_path="$DIR/fastfetch"

bash_target="$HOME/.bashrc"
clangd_target="$HOME/.config/clangd"
kanata_target="$HOME/.config/kanata.kbd"
kitty_target="$HOME/.config/kitty"
nvim_target="$HOME/.config/nvim"
wezterm_target="$HOME/.wezterm.lua"
vscodium_target="$HOME/.config/VSCodium/User"
fastfetch_target="$HOME/.config/fastfetch"

symlink $bash_path $bash_target

symlink $clangd_path $clangd_target

symlink $kanata_path $kanata_target

symlink $kitty_path $kitty_target

symlink $nvim_path $nvim_target

symlink $wezterm_path $wezterm_target

symlink $vscodium_path"/settings.json" $vscodium_target"/settings.json"
symlink $vscodium_path"/keybindings.json" $vscodium_target"/keybindings.json"

symlink $fastfetch_path $fastfetch_target
