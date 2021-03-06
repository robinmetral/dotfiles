# Dotfiles

Setup scripts and (upcoming) dotfiles for my Ubuntu setup.

## Usage

1. Download

Use wget, installed by default on Ubuntu. Alternatively, download with curl or git.

```
wget https://github.com/robinmetral/dotfiles/archive/master.tar.gz -O - | tar xz
```

2. Run

```
cd dotfiles-master/scripts
chmod +x *.sh
./setup.sh
```

## What does it do?

It installs some essential CLI tools (like `git` and `curl`) and the following programs via snap:

- vlc
- firefox
- thunderbird
- libreoffice
- gimp
- mattermost-desktop
- chromium
- vscode (including [extensions](/scripts/programs/vscode.sh))

It also sets up a [NodeJS environment with nvm](/scripts/programs/nvm.sh) and the latest NodeJS version, as well as [yarn and global yarn modules](/scripts/programs/yarn.sh):

- gatsby-cli
- jest-cli
- typescript

## Thanks

This repo was initially based on [Victoria Drake's dotfiles](https://github.com/victoriadrake/dotfiles).
