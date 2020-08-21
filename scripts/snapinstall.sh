#!/bin/bash

function snapinstall {
  which $1 &>/dev/null

  if [ $? -ne 0 ]; then
    echo "installing ${1}"
    sudo snap install $1
  else
    echo "${1} already installed"
  fi
}

snapinstall vlc
snapinstall firefox
snapinstall libreoffice
snapinstall gimp
snapinstall mattermost-desktop
snapinstall chromium
