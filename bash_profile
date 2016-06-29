alias sublime='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl .'
alias todolist='grep -r "TODO " .'
alias lock='open -a /System/Library/Frameworks/ScreenSaver.framework/Versions/A/Resources/ScreenSaverEngine.app'
alias fuck='TF_CMD=$(TF_ALIAS=fuck PYTHONIOENCODING=utf-8 TF_SHELL_ALIASES=$(alias) thefuck $(fc -ln -1)) && eval $TF_CMD && history -s $TF_CMD'

alias dc='docker-compose'
alias dcu='docker-compose up'
alias dcr='docker-compose run --rm web'
alias dcrx='docker-compose run --rm web bundle exec'

export DOCKER_HOST=tcp://172.16.222.130:2376
export DOCKER_CERT_PATH=/Users/ngupta/.docker/machine/machines/dinghy
export DOCKER_TLS_VERIFY=1
export DOCKER_MACHINE_NAME=dinghy

export AWS_CREDS_SHELL=ngupta

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
