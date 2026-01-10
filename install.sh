#!/bin/bash

bash_path="$PWD/bash/.bashrc"
clangd_path="$PWD/clangd"
kanata_path="$PWD/kanata/kanata.kbd"
kitty_path="$PWD/kitty"
nvim_path="$PWD/nvim"

bash_target="$HOME/.bashrc"
clangd_target="$HOME/.config/clangd"
kanata_target="$HOME/.config/kanata.kbd"
kitty_target="$HOME/.config/kitty"
nvim_target="$HOME/.config/nvim"

echo "linking '$bash_path' to '$bash_target'"
ln -snf $bash_path $bash_target

echo "linking '$clangd_path' to '$clangd_target'"
ln -snf $clangd_path $clangd_target

echo "linking '$kanata_path' to '$kanata_target'"
ln -snf $kanata_path $kanata_target

echo "linking '$kitty_path' to '$kitty_target'"
ln -snf $kitty_path $kitty_target

echo "linking '$nvim_path' to '$nvim_target'"
ln -snf $nvim_path $nvim_target
