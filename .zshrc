# Environment Variables
if test -f "$HOME/.profile"; then
    source "$HOME/.profile"
fi

# Sheldon
if type sheldon >/dev/null 2>&1; then
    source <(sheldon source)
fi

# Starship
if type starship >/dev/null 2>&1; then
    source <(starship init zsh)
fi

# Neofetch
if type neofetch >/dev/null 2>&1; then
    neofetch
fi

# Fortune
if type fortune >/dev/null 2>&1; then
    fortune
fi
