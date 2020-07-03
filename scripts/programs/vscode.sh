#!/bin/bash

# install vscode
function installvscode {
  if command -v code 2>/dev/null; then
    echo "⌨️ vscode already installed"
  else
    echo "⌨️ installing vscode"
    sudo snap install code --classic
  fi
}
installvscode

# install vscode extensions
# the --force flag avoids prompts
function installextension {
  name="${1}"
  code --install-extension ${name} --force
}
# eslint
installextension dbaeumer.vscode-eslint
# git
installextension eamodio.gitlens
# json5 formatter
installextension mrmlnc.vscode-json5
# mdx formatter
installextension silvenon.mdx
# prettier
installextension esbenp.prettier-vscode
# css-in-js formatter
installextension jpoissonnier.vscode-styled-components
# graphql formatter
installextension prisma.vscode-graphql
# go support
installextension golang.go
# import cost
installextension wix.vscode-import-cost
# npm intellisense
installextension christian-kohler.npm-intellisense
# spell checker
installextension streetsidesoftware.code-spell-checker
installextension streetsidesoftware.code-spell-checker-french
# liveshare
installextension ms-vsliveshare.vsliveshare-pack
