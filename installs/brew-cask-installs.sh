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
    slack
    sourcetree
    spectacle
    spotify
    sublime-text3
    visual-studio-code
)

brew cask install "${apps[@]}"
