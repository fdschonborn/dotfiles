# Environment Variables
if test -f "$HOME/.profile"; then
    source "$HOME/.profile"
fi

# Zinit
ZINIT_PATH="$HOME/.zinit/bin"
if ! test -d "$ZINIT_PATH"; then
    git clone https://github.com/zdharma/zinit "$ZINIT_PATH"
fi
source "$ZINIT_PATH/zinit.zsh"

# Plugins
zinit snippet OMZL::compfix.zsh
zinit snippet OMZL::completion.zsh
zinit snippet OMZL::correction.zsh
zinit snippet OMZL::directories.zsh
zinit snippet OMZL::functions.zsh
zinit snippet OMZL::grep.zsh
zinit snippet OMZL::history.zsh
zinit snippet OMZL::key-bindings.zsh
zinit light zdharma/fast-syntax-highlighting
zinit light zdharma/history-search-multi-word
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-history-substring-search
zinit light romkatv/powerlevel10k

# Powerlevel10K
if test -f "$HOME/.p10k.zsh"; then
    source "$HOME/.p10k.zsh"
fi

# Neofetch
if type neofetch &> /dev/null; then
    neofetch
fi

# Fortune
if type fortune &> /dev/null; then
    fortune
fi
