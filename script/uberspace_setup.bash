#!/usr/bin/env bash

#################################################
## Setup new uberspace
##
## Install several packages, libs, tools on new
## uberspace with a simple command
#################################################

NAME=$(id -un)

function _install_wp() {
    printf "${BLUE}%s${NORMAL}\n" "Installing wp-cli"
    curl https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar -o /home/$NAME/tmp/wp-cli.phar

    mv /home/$NAME/tmp/wp-cli.phar /home/$NAME/bin/wp
    chmod +x /home/$NAME/bin/wp
    printf "${GREEN}%s${NORMAL}" "WP CLI installed at /home/$NAME/bin/wp"
}

_enable_colors
