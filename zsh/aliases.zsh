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
alias week='expr `date +%W`'
alias pubip='curl ifconfig.me'
alias ssh-pass='ssh -o PubkeyAuthentication=no'
alias art='php artisan'
alias json='python -mjson.tool'
alias jsonc='json | pygmentize -l json'
alias cat='bat'
alias dping='ping duck.co'
alias ping='prettyping --nolegend'

# ---Audio / Radio---
alias teufel='ffplay -nodisp -loop 0 $DOTFILES/assets/sin_10Hz_-72dBFS.mp3 2>/dev/null &'
#################################
# Play radio with pyradio.
#################################
alias pyradio='pyradio --stations $DOTFILES/assets/pyradio_stations.csv'
alias radio='pyradio'
alias nova='radio -p 1'
# alias swr3='radio -p 2'

#################################
# Play webradio streams with VLC
# -I rc   open without gui
#################################
alias swr3='vlc -I rc http://mp3-live.swr3.de/swr3_m.m3u'
# alias fritz='vlc -I rc http://rbb-mp3-fritz-m.akacast.akamaistream.net/7/799/292093/v1/gnl.akacast.akamaistream.net/rbb_mp3_fritz_m'
# alias fluxfm='vlc -I rc http://stream.hoerradar.de/fluxfm-berlin'

# ---Programs---
alias 2048='sh $DOTFILES/script/bash2048.sh'
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'
alias cask='brew cask'
alias phpstorm='open -a /Applications/PhpStorm.app "`pwd`"'
alias ct='composer test'
alias cov='composer coverage'
alias naturemood='$DOTFILES/script/naturemood'

# ---Shortcuts---
# alias code='cd $HOME/Code'
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
alias gloc='git ls-files | xargs cat | wc -l'
alias glocf='git ls-files | xargs wc -l'
alias gdis='git discard'
alias gfmd='git fetch -p && gm && g prune-remote'
alias nah='git reset --hard'
