# ---General---
alias ...='cd ../..'
alias ....='cd ../../..'
alias ll='ls -lh'
alias la='ls -lah'
alias l='la'

# ---Core---
alias showFiles='defaults write com.apple.finder AppleShowAllFiles TRUE; killall Finder'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles FALSE; killall Finder'

# ---Usefull Commmands---
alias rot13='php $DOTFILES/script/rot13.php'
alias reload='clear; source $HOME/.zshrc'
alias gping='ping google.de'
alias dping='ping duckduckgo.com'
alias week='expr `date +%W`'
alias vagrant-mysql='vagrant ssh -c "sudo service mysql start"'
alias pubip='curl ifconfig.me'
alias wetter='curl -4 wttr.in/Berlin'
alias wttr='curl -s wttr.in/Berlin | head -7 | tail -5'
alias ssh-pass='ssh -o PubkeyAuthentication=no'
alias art='php artisan'
alias json='python -mjson.tool'
alias jsonc='json | pygmentize -l json'

# ---Audio / Radio---
alias teufel='ffplay -nodisp -loop 0 $DOTFILES/assets/sin_10Hz_-72dBFS.mp3 2>/dev/null &'
# -I rc   open without gui
alias swr3='vlc -I rc http://mp3-live.swr3.de/swr3_m.m3u'
alias fritz='vlc -I rc http://rbb-mp3-fritz-m.akacast.akamaistream.net/7/799/292093/v1/gnl.akacast.akamaistream.net/rbb_mp3_fritz_m'
alias fluxfm='vlc -I rc http://stream.hoerradar.de/fluxfm-berlin'

# ---Programs---
alias 2048='sh $DOTFILES/script/bash2048.sh'
alias jup='jupyter notebook'
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'
alias cask='brew cask'
alias phpstorm='open -a /Applications/PhpStorm.app "`pwd`"'
alias pyradio='pyradio --stations $DOTFILES/assets/pyradio_stations.csv'

# ---Shortcuts---
alias code='cd $HOME/Code'
alias projects='cd $HOME/Projects'

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
