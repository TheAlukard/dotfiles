# History Configuration
HISTTIMEFORMAT="[%F %T] "
HISTFILE=~/.bash_eternal_history
HISTCONTROL=ignoredups
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
# --------------

#Options
bind 'TAB:menu-complete'
bind "C-H:shell-backward-kill-word"
bind 'set completion-ignore-case on'
bind 'set enable-bracketed-paste off'
# --------------

# Variables
EDITOR=nvim
# PS1="[$SHLVL $USER@$HOSTNAME \\w]$\033[37m "
# --------------

# Aliases
alias cls='clear'
alias py='python'
alias vim='/usr/bin/nvim'
alias vi='/usr/bin/vim'
alias ls='ls -AX'
alias ff='clear&&fastfetch'
# --------------

# Functions
function mkcd {
    mkdir -p "${1}" && cd "${1}"
}
# --------------

# eval "$(oh-my-posh init bash)"
