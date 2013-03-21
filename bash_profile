# faster way to present a detailed list
alias ll='ls -lahG'

# shortcut to my github folder
alias 2github='cd ~/Documents/Code/github/'

# better git log
alias git-log='git log --all --decorate --abbrev-commit --oneline --graph'
# alias for a more personal git log
alias gitlog='git log --decorate --stat --graph --pretty=format:"%C(yellow)%d%Creset %Cgreen%h%Creset (%ar - %Cred%an%Creset), %s%n"'

# reset to HEAD
alias git-undo='git reset --soft HEAD^'
 
# alias show number of LoC (Lines of Code)
alias git-loc="git ls-files | xargs cat | wc -l"

# alis show number of LoC per File and total
alias git-loc-file="git ls-files | xargs wc -l"

# global testspeed alias
alias tespeed='python ~/Documents/Code/github/tespeed/tespeed.py'

# ssh to Yallara RMIT
alias yallara='ssh s3424259@yallara.cs.rmit.edu.au'

# chrome index.html
function chrome() {
	open $@ --args --allow-file-access-from-files
}

# setting path
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/texbin


# Pimp my Prompt
# digitalformula.net

if [ -f /usr/local/etc/bash_completion.d/git-prompt.sh ];
then
    . /usr/local/etc/bash_completion.d/git-prompt.sh
fi

# colors
BLACK=$(tput setaf 0)
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
LIME_YELLOW=$(tput setaf 190)
POWDER_BLUE=$(tput setaf 153)
BLUE=$(tput setaf 4)
MAGENTA=$(tput setaf 5)
CYAN=$(tput setaf 6)
WHITE=$(tput setaf 7)
BRIGHT=$(tput bold)
NORMAL=$(tput sgr0)
BLINK=$(tput blink)
REVERSE=$(tput smso)
UNDERLINE=$(tput smul)

# enable the git bash completion commands
# source /usr/local/etc/bash_completion.d/git-completion.bash
# PS1='[\u@\h \w$(__git_ps1 " (%s)")]\$ '

# enable git unstaged indicators - set to a non-empty value
GIT_PS1_SHOWDIRTYSTATE="." 
# enable showing of untracked files - set to a non-empty value
GIT_PS1_SHOWUNTRACKEDFILES="."
# enable stash checking - set to a non-empty value
GIT_PS1_SHOWSTASHSTATE="."
 
# enable showing of HEAD vs its upstream
GIT_PS1_SHOWUPSTREAM="auto"

# set the prompt to show current working directory and git branch name, if it exists
# 
# this prompt is a green username, black @ symbol, cyan host, magenta current working directory and white git branch (only shows if you're in a git branch)
# unstaged and untracked symbols are shown, too (see above)
# this prompt uses the short colour codes defined above
#PS1='${YELLOW}\u${WHITE}@${GREEN}\h:${MAGENTA}\w${WHITE}`__git_ps1 " (%s)"`\$ '
 
# this is a cyan username, @ symbol and host, magenta current working directory and white git branch
# it uses the shorter , but visibly more complex, codes for text colours (shorter because the colour code definitions aren't needed)
#PS1='\[\033[0;36m\]\u@\h\[\033[01m\]:\[\033[0;35m\]\w\[\033[00m\]\[\033[1;30m\]\[\033[0;37m\]`__git_ps1 " (%s)"`\[\033[00m\]\[\033[0;37m\]\$ '

# return the prompt prefix for the second line
#function set_prefix {
#	BRANCH=`__git_ps1`
#	if [[ -z $BRANCH ]]; then
#		echo "${NORMAL}o"
#	else
#		echo "${UNDERLINE}+"
#	fi
#}

# and here's one similar to Paul Irish's famous prompt ... not sure if this is the way he does it, but it works  :)
# \033[s = save cursor position
# \033[u = restore cursor position
# ${LIME_YELLOW}\033[s\033[60C (`date "+%a, %b %d"`)\033[u${WHITE}

PS1='${MAGENTA}\u${WHITE} in ${GREEN}\w${WHITE}${YELLOW}`__git_ps1 " on %s"`${WHITE}\r\n${NORMAL}$ '

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 
