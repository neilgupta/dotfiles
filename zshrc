alias sublime='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl .'
alias code='cd ~/Code'
alias ts='/Applications/Tailscale.app/Contents/MacOS/Tailscale'

alias prme='echo "$(gh pr list --author="@me")"'
alias prs='echo "$(gh pr list -S "is:pr is:open review-requested:@me")"'
alias prsleft='prs | wc -l'

# assumes gh cli tool is authenticated
propen() {
  pr=$1
  if [ -z $pr ]; then
    # default to first open PR needing review
    pr=1
  fi
  # assume single digit pr number is actually positional...
  # this means propen won't work for actual single digit pull requests
  if [[ $pr -le "10" ]]; then
    all=$(IFS=" " ; echo "$(prs | awk '{print $1;}')")
    echo $all | read -d '' -A array
    pr=$array[$pr]
  fi
  gh pr view $pr --web
}

# make the up and down arrows cycle through commands that match the start of a line
bindkey '\e[A' history-beginning-search-backward
bindkey '\e[B' history-beginning-search-forward
