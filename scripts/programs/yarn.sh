#!/bin/bash

# install yarn
function installyarn {
  if command -v yarn 2>/dev/null; then
    echo "📦 yarn already installed"
  else
    echo "📦 installing yarn"
    # install according to https://classic.yarnpkg.com/en/docs/install/#alternatives-stable
    wget -qO- https://yarnpkg.com/install.sh | bash
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
