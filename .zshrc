source $ZSH/oh-my-zsh.sh
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

export FZF_BASE=/path/to/fzf/install/dir
export FZF_DEFAULT_COMMAND='rg'

plugins=(zsh-autosuggestions fzf fzf-tab fast-syntax-highlighting zsh-vi-mode)
export EDITOR=nvim
alias vim=nvim
alias v=nvim
alias n=nvim
alias nv=nvim
alias cl="clear"
alias c="clear"
alias ls="lsd -X"

export TERM="xterm-256color"

alias most="history | awk '{print $2}' | sort | uniq -c | sort -nr | head -10"

eval "$(zoxide init zsh)"
alias cd="z"
alias lg="lazygit"
alias t="tmux"

# git
alias gp="git push"
alias gc="git commit"
alias ga="git add"
eval "$(starship init zsh)"
