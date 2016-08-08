# Install cask 
brew tap caskroom/cask
brew tap caskroom/versions

# Install apps
apps=(
    alcatraz
	beyond-compare
    charles
    evernote
    firefox
    gimp
    github-desktop
    google-chrome
    google-drive
    skype
    sourcetree
    spectacle
    spotify
    sublime-text3
)

brew cask install "${apps[@]}"
