repo_path=$(find ~/programming/repos -mindepth 1 -maxdepth 1 | fzf)
repo_name=$(basename "$repo_path")
tmux new -s "$repo_name" -c "$repo_path"
tmux attach -d -t "$repo_name"
