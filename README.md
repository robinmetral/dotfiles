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
- libreoffice
- gimp
- mattermost-desktop
- vscode (including [extensions](/scripts/programs/vscode.sh))

## Thanks

This repo was insitially based on [Victoria Drake's dotfiles](https://github.com/victoriadrake/dotfiles).
