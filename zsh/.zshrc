#
# ~/.zshrc
#

# Zinit
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

if [[ ! -d "$ZINIT_HOME" ]]; then
  mkdir -p "$(dirname $ZINIT_HOME)"
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

source "${ZINIT_HOME}/zinit.zsh"

# Plugins
# zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions

autoload -U compinit && compinit

# Variables
export DOT=$HOME/temp-documents/dotfiles
export DISPLAY=:0.0
export EDITOR=neovim
export KITTY_ENABLE_MEDIA=1

# Aliases
alias e="sudo shutdown now"
alias rb="sudo reboot"
alias stowit="stow -v -R -t ~"
alias tma="tmux attach-session"
alias weather="curl wttr.in"
alias vim="nvim"
alias svim="sudo --preserve-env nvim"
alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias screen="escrotum -s $h"
alias image="kitten icat"

# Starship
eval "$(starship init zsh)"

# Keybindings
bindkey -v
bindkey '^f' autosuggest-accept
bindkey '^n' history-search-forward
bindkey '^p' history-search-backward

# History
HISTSIZE=10000
HISTFILE=$HOME/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_find_no_dups
setopt hist_ignore_dups

# Completition styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
