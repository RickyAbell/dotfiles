# Install cask 
brew tap caskroom/cask
brew tap caskroom/versions

# Install apps
apps=(
    1password
    beyond-compare
    evernote
    google-chrome
    slack
    spectacle
    spotify
    sublime-text
    visual-studio-code
)

brew cask install "${apps[@]}"
