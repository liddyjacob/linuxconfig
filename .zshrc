# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=1000
bindkey -e


# Download Znap, if it's not there yet.
[[ -r ~/Repos/znap/znap.zsh ]] ||
    git clone --depth 1 -- \
        https://github.com/marlonrichert/zsh-snap.git ~/Repos/znap
source ~/Repos/znap/znap.zsh  # Start Znap

# autosuggestions
ZSH_AUTOSUGGEST_HISTORY_IGNORE="cd *"
source ~/Repos/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '^[[Z' autosuggest-accept

# system info such as current git branch
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:*' formats '(%b)' # git

# aliases
alias typhon='ssh ty'
alias onyx='ssh onyx'
alias vim='nvim'
alias vi='nvim'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias cdo='cd /u/www/htdocs/onyx'
alias cat='bat --plain'

# shell
setopt prompt_subst
PS1='[%n@%m]%F{135}%/%f$_vcs_info_msg_0_ > '
