# Install Homebrew
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"

# wget
brew install wget

# Homebrew Cask
brew tap phinze/homebrew-cask
brew install brew-cask

# Apps
brew cask install heroku-toolbelt
brew cask install keyremap4macbook
brew cask install pc-keyboardhack
brew cask install noejectdelay
brew cask install slate
brew cask install splashtop-streamer
brew cask install dropbox
brew cask install google-chrome
brew cask install sequel-pro
brew cask install intellij-community
brew cask install hipchat
brew cask install sourcetree

# MySQL
brew install mysql
ln -sfv /usr/local/opt/mysql/*.plist ~/Library/LaunchAgents

# Postgres
# brew install postgres

# RVM
# Install rvm, ruby 1.9.3, bundler
# gem install bundler

# QLStephen
./grget -d ~/Library/QuickLook -u whomwah/qlstephen
