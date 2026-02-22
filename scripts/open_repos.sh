#!/usr/bin/env bash

PROJECTS="$HOME/programming/repos"

repo_name=$(find "$PROJECTS" -mindepth 1 -maxdepth 1 -type d -exec basename {} \; | fzf)

if [[ -n "$repo_name" ]]; then
    tmux new -ADs "$repo_name" -c "$PROJECTS/$repo_name"
fi
