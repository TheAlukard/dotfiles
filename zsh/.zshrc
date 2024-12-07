# History Configuration
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=5000

setopt appendhistory
setopt sharehistory
setopt incappendhistory
setopt -h
# --------------

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

# Bindings
bindkey -v
setopt VI
# bindkey -e
# setopt EMACS
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^H" backward-kill-word
bindkey "TAB" menu-complete
# --------------

# case insensitive path-completion
autoload -Uz +X compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select
# --------------

# Variables
TIMEFMT=$'real\t%E\nuser\t%U\nsys\t%S'
# --------------

# Startup
source /c/Users/pc/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
eval "$(starship init zsh)"
# --------------
