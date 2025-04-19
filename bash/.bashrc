# History Configuration
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "
export HISTFILE=~/.bash_eternal_history
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

# Aliases
alias ni=touch
alias cls=clear
alias vim=nvim
alias ahk=Ahk2Exe
alias make=mingw32-make
alias py=python
alias ls='ls -la'
alias calc='E:/Programming/C/PrattParsing/PrattParsing.exe'
# --------------

# Functions
function yt_music {
    yt-dlp -f "bestaudio[ext=m4a]" -x $1 -o "E:\Music\%(title)s.%(ext)s" 
}

function prog {
	cd "E:/Programming/"$1
}

function activ_win {
    pwsh -command 'Start-Process "E:\Programs\Microsoft-Activation-Scripts-master\MAS\Separate-Files-Version\Activators\HWID_Activation.cmd" -WindowStyle Hidden'
}

function mkcd {
    mkdir -p "${1}" && cd "${1}"
}

function zig_init {
	cp E:/Programming/zig/template/* . -r
	sed -i -- "s/template/${PWD##*/}/g" build.zig
}

# --------------

bind 'TAB:menu-complete'
shopt -s cdspell
bind "C-H:shell-backward-kill-word"

eval "$(starship init bash)"
