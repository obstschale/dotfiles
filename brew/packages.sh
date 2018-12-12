#!/bin/bash

which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    echo "Install brew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Install Packages"

declare -a arr=("zsh" "tmux" "git" "php@7.2" "composer" "node" "tree")

for i in "${arr[@]}"
do
    echo "Install package: $i"
    brew install "$i"
done
