# Enable Text Selection within QuickLook
defaults write com.apple.finder QLEnableTextSelection -boolean YES

# Make Dock icons of hidden applications translucent.
defaults write com.apple.dock showhidden -bool true

# Disable guest account
sudo defaults write /Library/Preferences/com.apple.loginwindow.plist "GuestEnabled" 0

# Set a 15 min delay before asking for password after sleep
defaults -currentHost write com.apple.screensaver askForPasswordDelay -int 900

# killall Dock
