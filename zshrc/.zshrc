# First use, install oh-my-zsh and install plugins: https://gist.github.com/n1snt/454b879b8f0b7995740ae04c5fb5b7df
eval "$(starship init zsh)"


export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME=""

export EDITOR="nvim"
export SUDO_EDITOR="$EDITOR"
export PGHOST="/var/run/postgresql"

export PATH=$PATH:/usr/local/go/bin

# k8
# source <(kubectl completion zsh)

# autoload -Uz compinit
# compinit


# fzf
plugins=(
	zsh-autosuggestions
	git
	zsh-syntax-highlighting
	dirhistory
)
source $ZSH/oh-my-zsh.sh
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

alias ll="exa -l -g --icons"
alias ls="exa --icons"
alias lt="exa --tree --icons -a -I '.git|__pycache__|.mypy_cache|.ipynb_checkpoints'"
alias arch="archey3"
alias vim="nvim"
alias k="kubectl"

HISTFILE=~/.history
HISTSIZE=10000
SAVEHIST=50000

setopt inc_append_history

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
