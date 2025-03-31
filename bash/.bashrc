#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# Variables
export DOT=$HOME/temp-documents/dotfiles
export DISPLAY=:0.0
export EDITOR=neovim

# Custom Aliases
alias e="sudo shutdown now"
alias stowit="stow -v -R -t ~"
alias tma="tmux attach-session"
alias snvim="sudo --preserve-env nvim"
