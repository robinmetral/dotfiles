#!/bin/bash

# install yarn
function installyarn {
  if command -v yarn 2>/dev/null; then
    echo "📦 yarn already installed"
  else
    echo "📦 installing yarn"
    # install according to https://classic.yarnpkg.com/en/docs/install/#debian-stable
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
    sudo apt update && sudo apt install --no-install-recommends yarn # install yarn without node
  fi
}
installyarn

# install global yarn packages
function installmodule {
  name="${1}"
  yarn global add ${name}
}
# gatsby
installmodule gatsby-cli
gatsby telemetry --disable # disable telemetry
# jest
installmodule jest-cli
# typescript
installmodule typescript

# check that the path is correctly set up for global modules
function updatepath {
  if command -v gatsby 2>/dev/null; then
    echo "📦 yarn global PATH already set up"
  else
    echo "📦 adding yarn global dir to PATH"
    # add yarn global dir to path
    echo "PATH=$PATH:$(yarn global bin)" >> ~/.bashrc
    # cannot source .bashrc here, export variable for the current shell
    export PATH="$PATH:$(yarn global bin)"
  fi
}
updatepath
