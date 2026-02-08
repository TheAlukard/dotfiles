#!/bin/env bash

selected=$(tmux ls -F'#{session_name}' 2>/dev/null | fzf --bind 'enter:accept-or-print-query')

if [[ $selected ]]; then
    tmux new -ADs "$selected"
fi
