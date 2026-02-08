#!/bin/env bash

session=$(tmux ls -F'#{session_name}' | fzf)

if [ $session ]; then
    tmux a -dt "$session"
fi
