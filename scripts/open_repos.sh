#!/bin/env bash

repo_path=$(find ~/programming/repos -mindepth 1 -maxdepth 1 -type d | fzf)
repo_name=$(basename "$repo_path")
tmux new -AD -s "$repo_name" -c "$repo_path"
