alias sublime='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl .'
alias todolist='grep -r "TODO " .'

alias dc='docker-compose'
alias dcu='docker-compose up'
alias dcr='docker-compose run --rm'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH

source ~/.bashrc
