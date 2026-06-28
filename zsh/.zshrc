alias python3="python3.13"
alias pip3="pip3.13"

# 1. Enable colors for the native macOS 'ls' command
export CLICOLOR=1

# 2. Configure colors for directories and files
# Format string layout: ex fX fX fX... (Directory, Symlink, Socket, Executable, etc.)
# Letters represent colors: a=black, b=red, c=green, d=brown, e=blue, f=magenta, g=cyan, h=light grey
# Uppercase means bold. 'x' means default background.
export LSCOLORS="ExFxCxDxBxegedabagacad"

# 3. Add an alias so 'ls' always uses your color preferences and human-readable formatting
alias ls="ls -GFh"

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
