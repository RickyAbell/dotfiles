#!/usr/bin/env bash

# Pulls the latest version, installs packages if requested and
# links the dotfiles to the home directory and runs them.

cd "$(dirname "${BASH_SOURCE}")"

git pull origin master

function doIt() {
  local DOTFILES_ROOT=$(pwd)

  if ["$1" == "runInstalls"]
  then
    source installs/brew-installs.sh
    source installs/brew-cask-installs.sh
    source installs/node-installs.sh
  fi

  # Backup the previous bash_profile just in case someone skips the warning
  cp ~/.bash_profile{,.backup}
  
  # Create symbolic links in home directory for our dot files so that updates
  # in git repo or home directory will be tracked
  ln -sfv "$DOTFILES_ROOT/git/.gitconfig" ~
  ln -sfv "$DOTFILES_ROOT/git/.gitignore" ~
  ln -sfv "$DOTFILES_ROOT/hg/.osx" ~
  ln -sfv "$DOTFILES_ROOT/osx/.hgignore" ~
  ln -sfv "$DOTFILES_ROOT/system/.aliases" ~
  ln -sfv "$DOTFILES_ROOT/system/.env.bash" ~
  ln -sfv "$DOTFILES_ROOT/system/.exports" ~
  ln -sfv "$DOTFILES_ROOT/system/.functions" ~
  ln -sfv "$DOTFILES_ROOT/system/.hushlogin" ~
  ln -sfv "$DOTFILES_ROOT/system/.inputrc" ~
  ln -sfv "$DOTFILES_ROOT/system/.screenrc" ~
  ln -sfv "$DOTFILES_ROOT/system/.wgetrc" ~
  ln -sfv "$DOTFILES_ROOT/.bash_profile" ~

  # Load the new dotfiles state
  source ~/.bash_profile

  echo "Dotfiles installation complete"
}

read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
echo ""
if [[ $REPLY =~ ^[Yy]$ ]]
then
  read -p "Install brew, brew-cask and node packages? (y/n) " -n 1
  echo ""
  if [[ $REPLY =~ ^[Yy]$ ]]
  then
    doIt runInstalls
  else
    doIt
  fi
fi

unset doIt