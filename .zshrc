# ─── Enable for plugin profiling ─────────────────────────────────────────────
# zmodload zsh/zprof

# ─── Set PATH ─────────────────────────────────────────────────────────────────
# Core paths -> user-specific paths 
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

export PATH="$PATH:$HOME/.local/bin"  # local custom scripts
export PATH="$PATH:/usr/local/go/bin" # go binaries
# export GOPATH="$XDG_DATA_HOME/go"   # go path -> ???
#
# ─── Remove duplicates ────────────────────────────────────────────────────────
typeset -U PATH # Zsh to treat PATH as unique array (thanks zsh)

# ─── Zap Plugin Manager ───────────────────────────────────────────────────────
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && \
    source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"

# ─── Zsh Plugins ──────────────────────────────────────────────────────────────
# plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"
plug "zsh-users/zsh-completions"
plug "Aloxaf/fzf-tab"

# ─── Plug opts stored elsewhere ───────────────────────────────────────────────
# plug "$HOME/.config/zsh/aliases.zsh" # also add dir for env vars

# ─── Load modules  ────────────────────────────────────────────────────────────
autoload -Uz compinit
compinit -C
autoload -U colors && colors

# ─── Source Aliases ───────────────────────────────────────────────────────────
#       Check if exist & regular | only run if test success | & source
# [ -f "$XDG_CONFIG_HOME/zsh/aliases.zsh" ] && source "$XDG_CONFIG_HOME/zsh/aliases.zsh"

# ─── History opts  ────────────────────────────────────────────────────────────
HISTSIZE=10000
HISTFILE="$XDG_STATE_HOME/zsh_history"
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups
setopt auto_menu
setopt menu_complete

# ─── Completion ─────────────────────────────────────────────────────────────
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}' # ignore case 
zstyle ':completion:*' list-colors '${(s.:.)LS_COLORS}'
zstyle ':completion:*' menu select # tab opens cmp menu
zstyle ':completion:*' special-dirs true # force show . & ..
zstyle ':fzf-tab:*' fzf-flags --color=fg:1,fg+:2 --bind=tab:accept
# zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --color=always $realpath'
# zstyle ':completion:*' squeeze-slashes false # explicit disable to allow /*/ expansion

# ─── Shell integrations  ──────────────────────────────────────────────────────
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
# eval "$(fzf --zsh)"
# source <(fzf --zsh) # ... throws error here, is it read in the wrong order?

# ─── Keybinds  ─────────────────────────────────────────────────────────────────
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
bindkey '^y' autosuggest-accept



source "$HOME/.config/zsh/aliases.zsh"
#
# source "$HOME/.config/zsh/zprof-lite.zsh"
# source /usr/share/wikiman/widgets/widget.zsh
# export MANPAGER="less -R --use-color -Dd+r -Du+b"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
