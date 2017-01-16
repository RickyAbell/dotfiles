# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew, formulae, and packages
brew update
brew upgrade

# Install packages
apps=(
    node
    pebble/pebble-sdk/pebble-sdk
    python3
    awscli
)

brew install "${apps[@]}"

# Install pip3 packages now that it is available
pip3 install jupyter
