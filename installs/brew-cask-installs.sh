# Install cask 
brew tap caskroom/cask
brew tap caskroom/versions

# Install apps
apps=(
    1password
    beyond-compare
    charles
    docker
    evernote
    firefox
    gimp
    google-chrome
    skype
    slack
    sourcetree
    spectacle
    spotify
    sublime-text
    visual-studio-code
)

brew cask install "${apps[@]}"
