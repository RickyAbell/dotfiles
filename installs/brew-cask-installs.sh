# Install cask 
brew tap caskroom/cask

# Install apps
apps=(
    dropbox
    firefox
    google-chrome
    google-chrome-canary
    google-drive
    sourcetree
    spectacle
    spotify
    sublime-text3
)

brew cask install "${apps[@]}"
