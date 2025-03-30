#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# DISPLAY ENV VAR
export DISPLAY=:0.0

# DOT VAR
export DOT=$HOME/temp-documents/dotfiles

# ALIASES
alias e="sudo shutdown now"
alias stowit="stow -v -R -t ~"
alias tma="tmux attach-session"
alias snvim="sudo --preserve-env nvim"
