alias sublime='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl .'
alias todolist='grep -r "TODO " .'
alias code='cd ~/Code'

alias dc='docker-compose'
alias dcu='docker-compose up'
alias dcr='docker-compose run --rm'

# make the up and down arrows cycle through commands that match the start of a line
bindkey '\e[A' history-beginning-search-backward
bindkey '\e[B' history-beginning-search-forward
