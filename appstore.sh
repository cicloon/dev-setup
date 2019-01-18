# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

brew install mas

mas install 497799835  # Xcode (10.1)
mas install 405580712  # StuffIt Expander (15.0.7)
mas install 409183694  # Keynote (8.3)
mas install 784801555  # Microsoft OneNote (15.29)
mas install 918858936  # Airmail 3 (3.2.1)
mas install 409201541  # Pages (6.0.5)
mas install 682658836  # GarageBand (10.1.4)
mas install 413857545  # Divvy (1.5)
mas install 409203825  # Numbers (5.3)
mas install 784801555  # Microsoft OneNote
mas install 1384080005 # Tweetbot (3.2)
mas install 973134470  # Be Focused (1.7.5)
mas install 946798523  # AntiSleep (2.13)


killall "divvy" &> /dev/null
sudo cp com.mizage.Divvy.plist ~/Library/Preferences/com.mizage.Divvy.plist

