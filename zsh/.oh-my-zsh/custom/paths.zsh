addToPath $(yarn global bin)
addToPath "$HOME/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
addToPath $HOME/go/bin
addToPath $HOME/.pyenv/bin
addToPath $HOME/.cargo/bin

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

