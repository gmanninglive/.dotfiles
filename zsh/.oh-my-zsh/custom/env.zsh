export DOTFILES="$HOME/.dotfiles"
export STOW_FOLDERS="coc,i3,nvim,skhd,zsh,polybar"

addToPath() {
    if [[ "$PATH" != *"$1"* ]]; then
        export PATH=$PATH:$1
    fi
}

# export GENIE_CONFIG='~/Coding/genieconfig/config.json'
# export GOPATH="$HOME/go"
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
