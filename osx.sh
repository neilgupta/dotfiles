# Disable Expose animations.
defaults write com.apple.dock expose-animation-duration -int 0

# Disable Launchpad animations.
defaults write com.apple.dock springboard-show-duration -int 0
defaults write com.apple.dock springboard-hide-duration -int 0

# Disable auto-hiding dock delay.
defaults write com.apple.Dock autohide-delay -float 0

# Enable hidden four-finger gesture to go back to most recent space.
defaults write com.apple.dock double-tap-jump-back -bool TRUE

# Make Dock icons of hidden applications translucent.
defaults write com.apple.dock showhidden -bool true

# Add a context menu item for showing the Web Inspector in web views.
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

killall Dock
echo "...done. Some changes may require a restart to take effect."