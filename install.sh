#!/bin/bash
############################
# install.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files="gitconfig bash_profile inputrc slate gemrc karabiner.d/configuration/karabiner.json"    # list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir

# create ~/.m2 directory
echo "Creating .karabiner.jd/configuration for Karabiner in ~"
mkdir -p ~/.karabiner.d/configuration

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

# symlink keyremap4macbook settings to Application Support
# echo "Creating symlink to private.xml in ~/Library/Application Support/KeyRemap4MacBook directory."
# mkdir -p ~/Library/Application\ Support/KeyRemap4MacBook
# ln -s $dir/KeyRemap4MacBook/private.xml ~/Library/Application\ Support/KeyRemap4MacBook/private.xml

# for entry in "$dir/Preferences"/*; do
#   echo "Creating symlink to ${entry##*/} ~/Library/Preferences directory."
#   ln -s $entry ~/Library/Preferences/${entry##*/}
# done

echo "Copying fonts to Library"
cp -r $dir/Fonts ~/Library/Fonts

# echo "Creating QuickLook dir"
# mkdir -p ~/Library/QuickLook

# Run shell scripts
echo "Running osx config..."
sh $dir/osx.sh
# echo "Installing apps..."
# sh $dir/apps.sh

echo "...done"
# printf "\nIn KeyRemap4MacBook:\n  * Enable mappings, including Esc key -> forward delete manually\n  * Set Timeout to 300ms\n"
# printf "\nIn PCKeyboardHack:\n  * Set the Caps Lock key to keycode 80 (for F19)\n"
printf "\nPlease restart your machine.\n\n"
