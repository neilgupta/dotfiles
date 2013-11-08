# Enable Text Selection within QuickLook
defaults write com.apple.finder QLEnableTextSelection -boolean YES

# Make Dock icons of hidden applications translucent.
defaults write com.apple.dock showhidden -bool true

killall Dock
