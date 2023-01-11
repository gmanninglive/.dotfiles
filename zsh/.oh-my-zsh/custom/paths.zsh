addToPath "/snap/bin/code"
addToPath $HOME/go/bin
addToPath $HOME/.pyenv/bin
addToPath $HOME/.cargo/bin

export PNPM_HOME=$HOME/.local/share/pnpm
addToPath $PNPM_HOME 

# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"
# if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

