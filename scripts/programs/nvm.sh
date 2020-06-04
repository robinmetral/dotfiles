#!/bin/bash

# install nvm
function installnvm {
  if command -v nvm 2>/dev/null; then
    echo "📦 nvm already installed"
  else
    echo "📦 installing nvm"
    # install according to https://github.com/nvm-sh/nvm
    wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

    # cannot use `source ~/.bashrc` here, loading nvm manually
    # https://askubuntu.com/questions/64387/cannot-successfully-source-bashrc-from-a-shell-script
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
  fi
}
installnvm

# install node
nvm install node # latest version
nvm install --lts # latest lts
