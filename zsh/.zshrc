alias python3="python3.13"
alias pip3="pip3.13"
eval "$(starship init zsh)"

# Turn on native Zsh tab-completion
autoload -Uz compinit && compinit

# Allow arrow keys to navigate the Tab menu
zstyle ':completion:*' menu select

# Make completion case-insensitive (typing 'cd doc' will find 'Documents')
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# Load core gray suggestions & syntax highlighting
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Inject native fuzzy history, file hooks, and triggers
source <(fzf --zsh)
