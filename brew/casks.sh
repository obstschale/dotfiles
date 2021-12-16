#!/bin/bash

which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    echo "Install brew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Install Applications"

declare -a arr=("firefox" "zoomus" "phpstorm" "alfred" "hyper" "dash" "postman" "rocket-chat"
                "sequel-pro" "vlc" "visual-studio-code" "syncthing" "keepassxc" "todoist"
                "obsidian" "rocket-chat" "seafile-client" "docker" "dozer" "logos" "postman"
                "responsively" "spotify" "vlc")

brew cask install ${arr[*]}
