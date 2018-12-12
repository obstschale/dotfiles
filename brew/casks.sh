#!/bin/bash

which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    echo "Install brew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Install Applications"

declare -a arr=("firefox" "zoomus" "phpstorm" "alfred" "hyper" "dash" "postman" "rocket-chat"
                "sequel-pro" "vlc" "visual-studio-code")

for i in "${arr[@]}"
do
    echo "Install $i"
    brew cask install "$i"
done
