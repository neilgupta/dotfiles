alias sublime='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl .'
alias code='cd ~/Code'
alias ts='/Applications/Tailscale.app/Contents/MacOS/Tailscale'

# make the up and down arrows cycle through commands that match the start of a line
bindkey '\e[A' history-beginning-search-backward
bindkey '\e[B' history-beginning-search-forward
