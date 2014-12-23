# ---General---
alias ...='cd ../..'
alias ....='cd ../../..'

# ---Usefull Commmands---
alias rot13='php $DOTFILES/script/rot13.php'
alias reload='clear; source ~/.zshrc'
alias gping='ping google.de'
alias week='expr `date +%W` + 1'
alias vagrant-mysql='vagrant ssh -c "sudo service mysql start"'
alias pubip='curl ifconfig.me'
alias teufel='ffplay -nodisp -loop 0 $DOTFILES/assets/sin_10Hz_-72dBFS.mp3 2>/dev/null &'
# -I rc   open without gui
alias swr3='vlc -I rc http://swr-mp3-m-swr3.akacast.akamaistream.net/7/720/137136/v1/gnl.akacast.akamaistream.net/swr-mp3-m-swr3'

# ---Programs---
alias mou='open -a Mou'
alias 2048='sh $DOTFILES/script/bash2048.sh'
alias speedtest='python ~/Documents/code/Python/tespeed/tespeed.py'
alias ipn='ipython notebook'
alias vlc='~/Applications/VLC.app/Contents/MacOS/VLC'

export TODOTXT_DEFAULT_ACTION=ls
alias t='todo.sh -d /usr/local/Celler/todo-txt/2.10/bin/todo.sh'

# ---Shortcuts---
alias code='cd ~/Documents/code'

# ---GIT---
alias g='git'
alias gs='git status -s'
alias glg='git lg'
alias ga='git add'
alias gc='git commit'
alias amend='git commit --amend'
alias gb='git branch'
alias gco='git checkout'
alias gm='git merge'

