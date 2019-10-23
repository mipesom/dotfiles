
#==================================================================================================

# Path to oh-my-zsh installation.
export ZSH=/home/mipesom/.oh-my-zsh

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="mipesom" #"robbyrussell"  "random" to load a random theme each time omz is loaded

plugins=(git extract command-not-found pip zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh 
. ~/.dotfiles/z.sh

#==================================================================================================

#GOPATH=/home/mipesom/Development/go
#export GOPATH
#PATH=$PATH:$GOPATH/bin # Add GOPATH/bin to PATH for scripting

# export PATH=$HOME/.bin:bin:/usr/local/go/bin:$HOME:$HOME/Applications/Haxe4:$PATH <-- OLD
export PATH="${PATH}:${HOME}/.dotfiles/scripts/"
export PATH="${PATH}:${HOME}/.local/bin/"
export PATH="${PATH}:${HOME}/usr/local/"
export PATH="${PATH}:${HOME}/Applications/"
# echo $PATH 

export TERM=xterm-256color
[ -n "$TMUX" ] && export TERM=screen-256color

export EDITOR='vim'
export QT_SCREEN_SCALE_FACTORS=1
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export UPDATE_ZSH_DAYS=14  # how often to auto-update (in days).

#==================================================================================================

alias wttr='curl wttr.in/"Celle, Germany"'
alias ls="ls -l --color --group-directories-first"
alias g='googler -c us -l en -t m18'

pycheat() {
    curl cheat.sh"/python/$*"
}

cscheat() {
    curl cheat.sh"/csharp/$*"
}

#==================================================================================================

COMPLETION_WAITING_DOTS="true"  # display red dots whilst waiting for completion
stty intr \^x  # Exit running program with ctrl-x 
HISTSIZE=999999999
SAVEHIST=$HISTSIZE

#==================================================================================================

neofetch




