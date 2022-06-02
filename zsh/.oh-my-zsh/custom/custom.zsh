# Turn off all beeps
unsetopt BEEP
VIM="nvim"

#RBENV
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

#YARN
export PATH="$PATH:$(yarn global bin)"

#VSCODE
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

#NVM
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"

# GOLANG
export GOPATH="$HOME/go"

#GENIE
export PATH="$PATH:$HOME/go/github.com/gmanninglive/genie/genie"
export GENIE_CONFIG='~/Coding/genieconfig/config.json'

#PYENV
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

#Aliases
alias yardr='cd ~/work/yardlink-rails'
alias yardf='cd ~/work/yardlink-frontend'
alias v='nvim'
alias grc='rubocop -a && git commit'
alias bsearch='git branch | grep'

# Pass "q" as first arg to carry out yabai space query
# Pass to as second arg to move spaces between displays
# Otherwise carry out normal space command
# https://github.com/koekeishiya/yabai/wiki/Commands#space-commands
function yspace() {
  if [[ $1 = "q" ]]
  then
    echo $0
    yabai -m query --spaces ${@:2}
  elif [[ $2 = "to" ]] 
  then
    yabai -m space $1 --display $3
  else
    yabai -m space $@
  fi
}
