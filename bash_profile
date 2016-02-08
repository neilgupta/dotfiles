alias sublime='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl .'
alias todolist='grep -r "TODO " .'

export DOCKER_HOST=tcp://172.16.222.130:2376
export DOCKER_CERT_PATH=/Users/ngupta/.docker/machine/machines/dinghy
export DOCKER_TLS_VERIFY=1
export DOCKER_MACHINE_NAME=dinghy

export AWS_CREDS_SHELL=ngupta

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
