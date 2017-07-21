alias sublime='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl .'
alias todolist='grep -r "TODO " .'

alias dc='docker-compose'
alias dcu='docker-compose up'
alias dcr='docker-compose run --rm web'
alias dcrx='docker-compose run --rm web bundle exec'

export GOPATH=~/go
export PATH=$PATH:$GOPATH/bin

export DOCKER_HOST=tcp://172.16.222.130:2376
export DOCKER_CERT_PATH=/Users/ngupta/.docker/machine/machines/dinghy
export DOCKER_TLS_VERIFY=1
export DOCKER_MACHINE_NAME=dinghy

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH
