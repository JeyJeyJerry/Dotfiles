# ---------- POWERLEVEL10K INSTANT PROMPT ----------

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ---------- XINIT & PLUGINS ----------

ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# ---------- DOWNLOAD IF NOT INSTALLED ----------

if [ ! -d "$ZINIT_HOME" ]; then
  mkdir -p "$(dirname $ZINIT_HOME)"
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# ---------- SOURCE/LOAD ZINIT ----------

source "${ZINIT_HOME}/zinit.zsh"

# ---------- POWERLEVEL10K ----------

zinit ice depth=1; zinit light romkatv/powerlevel10k

# ---------- ZSH PLUGINS ----------

zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# ---------- SNIPPETS -----------

zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::archlinux

# ---------- LOAD COMPLETIONS ----------

autoload -U compinit && compinit

zinit cdreplay -q

# ---------- COMPLETION STYLING ----------

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'

# ---------- ALIASES ----------

alias ls='ls --color'

# ---------- PROMPT ----------

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ---------- HISTORY ----------

HISTSIZE=5000
HISTFILE=~/.config/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups

# ---------- SHELL INTEGRATIONS ----------

eval "$(fzf --zsh)"

# ---------- FASTFETCH ----------

fastfetch

# ---------- SOURCE PROMPT ----------
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
