export DOTFILES="$HOME/.dotfiles"
export STOW_FOLDERS="coc,kitty,nvim,skhd,yabai,zsh"

addToPath() {
    if [[ "$PATH" != *"$1"* ]]; then
        export PATH=$PATH:$1
    fi
}

export GENIE_CONFIG='~/Coding/genieconfig/config.json'
export GOPATH="$HOME/go"
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"

