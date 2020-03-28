if test -f "$HOME/.profile"; then
    source "$HOME/.profile"
fi

# Antigen
if test -f "$HOME/.antigen/antigen.zsh"; then
    source "$HOME/.antigen/antigen.zsh"

    # Framework
    antigen use oh-my-zsh

    # Bundles
    antigen bundle zdharma/fast-syntax-highlighting
    antigen bundle zdharma/history-search-multi-word
    antigen bundle zsh-users/zsh-autosuggestions
    antigen bundle zsh-users/zsh-completions
    antigen bundle zsh-users/zsh-history-substring-search

    # Theme
    antigen theme romkatv/powerlevel10k

    # Apply
    antigen apply
fi

# Powerlevel10k
if test -f "$HOME/.config/powerlevel10k.zsh"; then
    source "$HOME/.config/powerlevel10k.zsh"
fi

# Neofetch
if type neofetch >/dev/null 2>&1; then
    neofetch
fi
