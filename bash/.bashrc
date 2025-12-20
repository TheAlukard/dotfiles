# Variables
export HISTTIMEFORMAT="[%F %T] "
export HISTFILE=~/.bash_eternal_history
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
PS1="\033[32m\\w \\$\033[37m "
# --------------

#Options
bind 'TAB:menu-complete'
bind "C-H:shell-backward-kill-word"
bind 'set completion-ignore-case on'
# --------------

# Aliases
alias cls=clear
alias vim=nvim
alias py=python
alias ls='ls -la'
# --------------

# Functions
function mkcd {
    mkdir -p "${1}" && cd "${1}"
}
# --------------

# Commands
cd ~
clear
# --------------
