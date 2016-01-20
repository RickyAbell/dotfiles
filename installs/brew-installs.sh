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
    pebble-sdk
)

brew install "${apps[@]}"
