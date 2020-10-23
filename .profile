# Rust
if test -d "$HOME/.cargo/bin"; then
    export PATH="$HOME/.cargo/bin:$PATH"

    if type sccache &> /dev/null; then
        export RUSTC_WRAPPER="sccache"
    fi
fi

# Go
export GOPATH="$HOME/.go"
if test -d "$GOPATH/bin"; then
    export PATH="$GOPATH/bin:$PATH"
fi

# NodeJS
if test -d "$HOME/.nvm"; then
    source "$HOME/.nvm/nvm.sh"
fi

# Deno
if test -d "$HOME/.deno"; then
    export PATH="$HOME/.deno/bin:$PATH"
fi

# Flutter
if test -d "$HOME/.local/share/flutter"; then
    export PATH="$HOME/.local/share/flutter/bin:$PATH"
fi

# Local
if test -d "$HOME/.local/bin"; then
    export PATH="$HOME/.local/bin:$PATH"
fi
