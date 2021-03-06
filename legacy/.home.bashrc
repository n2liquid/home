alias reload="source ~/.bash_profile"
alias ls="ls -h --color=always"
alias ll="ls -l"
alias la="ls -la"
alias rmr="rm -r"
alias rmrf="rm -rf"
alias browse="guistart pantheon-files"
alias rrless="recycle-less"
alias xclips="xclip -selection clipboard"
alias gg="grab"
alias gga="grab-append"
alias rr="recycle"
alias rre="recycle-edit-files"
alias rrfe="recycle-find-and-edit-files"
alias rreb="recycle-edit-buffer"
alias rrc="recycle-cat-files"
alias lsgg="list-grabbed"
alias rmgg="rm-grabbed"
alias ack="ack --color"
alias cless="less -R"
alias annex="git annex"
export EDITOR=vim
function rd() {
	cd "$(recycle $1)"
}
function mkcd() {
	mkdir -p "$@" && cd "$@"
}
function bin() {
	nearest "bin/$1" -e ${@:2}
}
function nexec() {
    nearest "$1" -e $(@:2)
}
source "$(dirname "${BASH_SOURCE[0]}")/repeat.bashrc"
source "$(dirname "${BASH_SOURCE[0]}")/chronic.bashrc"
source "$(dirname "${BASH_SOURCE[0]}")/faketty.bashrc"
source "$(dirname "${BASH_SOURCE[0]}")/gpr.bashrc"
source "$(dirname "${BASH_SOURCE[0]}")/npr.bashrc"
