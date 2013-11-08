export JBOSS_HOME=/Users/neil/Documents/jboss-7.1
alias sublime='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias start_jboss='$JBOSS_HOME/bin/standalone.sh -Dtadev=true --server-config=standalone-dev.xml'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
