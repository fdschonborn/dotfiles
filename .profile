# Hub
if type hub >/dev/null 2>&1; then
    alias git="hub"
fi

# Rust
if test -d "$HOME/.cargo/bin"; then
    export PATH="$HOME/.cargo/bin:$PATH"

    if type sccache >/dev/null 2>&1; then
        export RUSTC_WRAPPER="sccache"
    fi
fi

# Go
export GOPATH="$HOME/.go"
if test -d "$GOPATH/bin"; then
    export PATH="$GOPATH/bin:$PATH"
fi

# NodeJS
if test -d "$HOME/.npm/bin"; then
    export PATH="$HOME/.npm/bin:$PATH"
fi

# Local
if test -d "$HOME/.local/bin"; then
    export PATH="$HOME/.local/bin:$PATH"
fi
