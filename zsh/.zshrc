# Aliases
alias ni=touch
alias cls=clear
alias vim=nvim
alias ahk=Ahk2Exe
alias make=mingw32-make
alias py=python
alias ls='ls -na'
# --------------

# Functions
function yt_music {
    yt-dlp -f "bestaudio[ext=m4a]" -x $1 -o "E:\Music\%(title)s.%(ext)s" 
}

function prog {
	cd "E:/Programming/"$1
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

# History Configuration
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=5000

setopt appendhistory
setopt sharehistory
setopt incappendhistory
# --------------

autoload -Uz +X compinit && compinit

## case insensitive path-completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select
# --------------

# Startup
eval "$(starship init zsh)"
# --------------
