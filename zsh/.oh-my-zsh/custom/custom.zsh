# Turn off all beeps
unsetopt BEEP
VIM="nvim"

source $ZSH_CUSTOM/env.zsh
source $ZSH_CUSTOM/paths.zsh

alias python=/usr/bin/python3

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

