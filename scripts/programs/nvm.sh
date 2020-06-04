#!/bin/bash

# install nvm
function installnvm {
  if command -v nvm 2>/dev/null; then
    echo "📦 nvm already installed"
  else
    echo "📦 installing nvm"
    # install according to https://github.com/nvm-sh/nvm
    wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
  fi
}
installnvm

source ~/.bashrc

# install node
nvm install node # latest version
nvm install --lts # latest lts
