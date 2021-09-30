#!/usr/bin/env bash

# Install command-line tools using Homebrew.

if [[ ! -n $(command -v brew) ]]; then
  read -p "You do not appear to have homebrew installed. Install it? (y/n) " -n 1
  echo ""
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo Installing homebrew...
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  else
    exit 0
  fi
fi

# TODO: include `nvm`

FORMULAE=(
  "gcc"
  "asciinema"
  "dos2unix"
  "jq"
  "mkcert"
  "octopuscli"
  "the_silver_searcher"
  "tmux"
  "todo-txt"
  "tree"
)

# Make sure we’re using the latest Homebrew.
brew update

# Add third-party respositories
brew tap octopusdeploy/taps

# Upgrade any already-installed formulae.
brew upgrade

for formula in "${FORMULAE[@]}"; do
  brew install $formula
done

# Remove outdated versions from the cellar.
brew cleanup
