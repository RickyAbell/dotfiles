# Ricky's dotfiles

Welcome to my dotfiles, they target OS X and aim to back up and synchronize my settings and custom commands. The goal is to make setting up a brand new machine as simple as running the install script.

I was inspired by the following
* https://dotfiles.github.io/
* https://github.com/mathiasbynens/dotfiles
* https://github.com/holman/dotfiles
* https://github.com/webpro/dotfiles

## Installation
Clone the repo and run install.sh to kick things off
```sh
git clone https://github.com/rickyabell/dotfiles.git
cd dotfiles && source install.sh
```

## OSX defaults
To configure OSX defaults run
```sh
source osx/.osx
```

## Update
To update the dotfiles on a machine, run
```sh
source install.sh
```
which will update the git repo and update all of the local dotfiles.
