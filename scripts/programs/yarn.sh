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

    # add yarn dir to path to enable global commands
    echo "$PATH:$(yarn global bin)" >> ~/.bashrc
    # cannot source .bashrc here, export variable for the current shell
    export PATH="$PATH:$(yarn global bin)"
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
