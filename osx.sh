# Enable Text Selection within QuickLook
defaults write com.apple.finder QLEnableTextSelection -boolean YES

# Make Dock icons of hidden applications translucent.
defaults write com.apple.dock showhidden -bool true

# Copy just the email address in Mail, not name <name@email.com> format
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false

killall Dock
echo "...done. Some changes may require a restart to take effect."
