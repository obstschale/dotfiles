#!/usr/bin/env bash

#################################################
## Setup new uberspace
##
## Install several packages, libs, tools on new
## uberspace with a simple command
#################################################


function _prepare_uberspace() {

    if [[ -z "$HOME" ]]; then
      # Default to old behavior
      HOME=/home/$(id -un)
    fi

    printf "${BLUE}%s${NORMAL}\n" "Create $HOME/bin if necessary"
    mkdir -p $HOME/bin
    chmod 0755 $HOME/bin
}

function _install_wp() {
    printf "${BLUE}%s${NORMAL}\n" "Installing wp-cli"
    curl https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar -o $HOME/tmp/wp-cli.phar

    mv -f $HOME/tmp/wp-cli.phar $HOME/bin/wp
    chmod +x $HOME/bin/wp
    printf "${GREEN}%s${NORMAL}\n" "WP CLI installed at $HOME/bin/wp"
}

function uberspace-private-setup() {
    _enable_colors
    _prepare_uberspace
}
