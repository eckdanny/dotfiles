#!/usr/bin/env bash

# Install nvm
bash -c "$(curl -fsSL https://raw.githubusercontent.com/nvm-sh/nvm/HEAD/install.sh)"

if [[ -n $(command -v yarn) ]]; then
  echo yarn is already installed. Updating...
  npm update --global yarn
else
  echo Installing yarn...
  npm install --global yarn
fi
