repo_path=$(find ~/programming/repos -mindepth 1 -maxdepth 1 | fzf)
repo_name=$(basename "$repo_path")
tmux new -AD -s "$repo_name" -c "$repo_path"
