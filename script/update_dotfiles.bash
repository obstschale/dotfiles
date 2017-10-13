#!/usr/bin/env bash

function _enable_colors() {
    # Use colors, but only if connected to a terminal, and that terminal
    # supports them.
    if which tput >/dev/null 2>&1; then
        ncolors=$(tput colors)
    fi
    if [ -t 1 ] && [ -n "$ncolors" ] && [ "$ncolors" -ge 8 ]; then
      RED="$(tput setaf 1)"
      GREEN="$(tput setaf 2)"
      YELLOW="$(tput setaf 3)"
      BLUE="$(tput setaf 4)"
      BOLD="$(tput bold)"
      NORMAL="$(tput sgr0)"
    else
      RED=""
      GREEN=""
      YELLOW=""
      BLUE=""
      BOLD=""
      NORMAL=""
    fi
}

function _current_epoch() {
  echo $(( $(date '+%s') / 60 / 60 / 24 ))
}

function _print_success_message() {
    printf '%s' "$GREEN"
    printf '%s\n' '                                    '
    printf '%s\n' '     _       _    __ _ _            '
    printf '%s\n' '  __| | ___ | |_ / _(_) | ___  ___  '
    printf '%s\n' ' / _` |/ _ \| __| |_| | |/ _ \/ __| '
    printf '%s\n' '| (_| | (_) | |_|  _| | |  __/\__ \ '
    printf '%s\n' ' \__,_|\___/ \__|_| |_|_|\___||___/ '
    printf "${BLUE}%s\n" "Hooray! The ${YELLOW}dotfiles${BLUE} has been updated and/or is at the current version."
    printf "${NORMAL}"
}

function _upgrade_dotfiles() {
    _enable_colors

    printf "${BLUE}%s${NORMAL}\n" "Updating Oh My Zsh"
    cd $DOTFILES

    if git pull --rebase --stat origin master
    then
        _print_success_message
    else
      printf "${RED}%s${NORMAL}\n" 'There was an error updating. Try again later?'
    fi

    _update_dotfiles_update
}

function _update_dotfiles_update() {
      echo "LAST_DOTFILES_CHECK=$(_current_epoch)" >! $DOTFILES/.dotfiles-update
}

epoch_target=$UPDATE_DOTFILES_DAYS
if [[ -z "$epoch_target" ]]; then
  # Default to old behavior
  epoch_target=13
fi

# Cancel upgrade if git is unavailable on the system
whence git >/dev/null || return 0

# Fetch .dotfiles-update to see when last check was
if [ -f $DOTFILES/.dotfiles-update ]; then
  . $DOTFILES/.dotfiles-update


    if [[ -z "$LAST_DOTFILES_CHECK" ]]; then
        _update_dotfiles_update && return 0;
    fi

    epoch_diff=$(($(_current_epoch) - $LAST_DOTFILES_CHECK))
    if [ $epoch_diff -gt $epoch_target ]; then
        echo "[dotfiles] Would you like to check for updates? [Y/n]: \c"
        read line
        if [[ "$line" == Y* ]] || [[ "$line" == y* ]] || [ -z "$line" ]; then
            _upgrade_dotfiles
        else
            echo 'Fair enough. Have a nice day!'
        fi
    fi
else
    _update_dotfiles_update
fi
