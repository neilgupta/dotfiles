#!/bin/bash
############################
# install.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory

# list of files/folders to symlink in homedir
files="gitconfig zshrc gemrc hammerspoon/init.lua config/karabiner/karabiner.json"

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir

# create ~/.hammerspoon directory
echo "Creating .hammerspoon for Hammerspoon in ~"
mkdir -p ~/.hammerspoon

# create ~/.config/karabiner directory
echo "Creating .config/karabiner for Karabiner in ~"
mkdir -p ~/.config/karabiner

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
  echo "Moving any existing dotfiles from ~ to $olddir"
  mv ~/.$file $olddir/
  echo "Creating symlink to $file in home directory."
  ln -s $dir/$file ~/.$file
done

echo "Copying fonts to Library"
cp -r $dir/Fonts ~/Library/Fonts

echo "Installing brew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/neil/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

echo "Installing apps..."

brew bundle --file="~/dotfiles/Brewfile"

echo "...done"
printf "\nPlease quit Terminal or switch to Warp\n\n"
