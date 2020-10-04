# Environment Variables
if test -f "$HOME/.profile"; then
    source "$HOME/.profile"
fi

# Zinit
export ZINIT_PATH="$HOME/.zinit/bin"
if ! test -d "$ZINIT_PATH"; then
    git clone https://github.com/zdharma/zinit "$ZINIT_PATH"
fi
source "$ZINIT_PATH/zinit.zsh"

# Plugins
zinit light ohmyzsh/ohmyzsh
zinit light zdharma/fast-syntax-highlighting
zinit light zdharma/history-search-multi-word
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-history-substring-search

# Spaceship
export SPACESHIP_PROMPT_ADD_NEWLINE=false
export SPACESHIP_PROMPT_SEPARATE_LINE=false
export SPACESHIP_CHAR_SYMBOL="❱ "
zinit light denysdovhan/spaceship-prompt

# Neofetch
if type neofetch &> /dev/null; then
    neofetch
fi

# Fortune
if type fortune &> /dev/null; then
    fortune
fi
