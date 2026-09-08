# ---------- CLI replacements ----------

alias ls='eza --icons'
alias ll='eza -lh --icons --git'
alias la='eza -lah --icons --git'
alias tree='eza --tree --icons'
compdef eza=ls
alias cat='bat'

# ---------- Core utilities ----------

alias grep='rg --color=auto'
alias diff='diff --color=auto'
alias df='df -h'

# ---------- Navigation ----------

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

# ---------- Editor -----------

alias vim='nvim'

# ---------- Git ----------

alias gs='git status'
alias ga='git add'
alias gaa='git add --all'
alias gc='git commit'
alias gcm='git commit -m'
alias gp='git push'
alias gpl='git pull'
