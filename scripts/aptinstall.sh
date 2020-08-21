#!/bin/bash

function aptinstall {
  which $1 &>/dev/null

  if [ $? -ne 0 ]; then
    echo "installing ${1}"
    sudo apt install -y $1
  else
    echo "${1} already installed"
  fi
}

aptinstall curl
aptinstall git
# git setup
git config --global user.email "robin@metral.ch"
git config --global user.name "Robin Métral"
# extra audio and video codecs, required to stream videos on some websites
aptinstall libavcodec-extra
# installing via apt over snap because snap is in beta and not official
aptinstall thunderbird
