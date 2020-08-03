# Environment Variables
if test -f "$HOME/.profile"; then
    source "$HOME/.profile"
fi

# Sheldon
if type sheldon &> /dev/null; then
    source <(sheldon source)
fi

# Starship
if type starship &> /dev/null; then
    source <(starship init zsh)
fi

# Neofetch
if type neofetch &> /dev/null; then
    neofetch
fi

# Fortune
if type fortune &> /dev/null; then
    fortune
fi
