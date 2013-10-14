
eval "$(hub alias -s)" 
# Add ANTLR to Classpath
# CLASSPATH=/Users/RetinaObst/Documents/University/DHBW/antlr-3.5-complete.jar:$CLASSPATH

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# # Uncomment following line if you want to disable colors in ls
# # DISABLE_LS_COLORS="true"

# # Uncomment following line if you want to disable autosetting terminal title.
# # DISABLE_AUTO_TITLE="true"

# # Uncomment following line if you want red dots to be displayed while waiting for completion
# # COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
# plugins=(git)

# OH-MY-ZSH --------------------------------------------------------

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bira-time"

source $ZSH/oh-my-zsh.sh

# Customize to your needs...----------------------------------------

# ssh to remote servers
# to Yallara and Numbat RMIT
alias yallara='ssh s3424259@yallara.cs.rmit.edu.au'
alias numbat='ssh s3424259@numbat.cs.rmit.edu.au'
# to ICF Server
alias icfserver='ssh icfstut@icf-stuttgart.de'
# to private server
alias hhbserver='ssh ssh-45748-buerger@hig-podcast.de'

# dir shortcuts
# to Code folder
alias code='cd ~/Documents/Code/'
# shortcut to my github folder
alias 2github='cd ~/Documents/Code/github/'

# faster way to present a detailed list
alias ll='ls -lahG'

# start antlrworks
alias antlrworks='java -jar /Users/RetinaObst/Documents/Code/Java/ANTLR/antlrworks/antlrworks-1.5.jar &'

# start R
alias rcalc='/usr/bin/R'

# Environment varibales ---------------------------------------------
export EDITOR='vim'
export PATH="/Users/RetinaObst/.rvm/gems/ruby-1.9.3-p392/bin:/Users/RetinaObst/.rvm/gems/ruby-1.9.3-p392@global/bin:/Users/RetinaObst/.rvm/rubies/ruby-1.9.3-p392/bin"
export PATH="$PATH:/Users/RetinaObst/.rvm/bin"
export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="$PATH:/opt/X11/bin:/usr/texbin"
export PATH="$PATH:/usr/local/sbin"

#export PATH=$PATH:/opt/X11/bin:/usr/texbin

export CLASSPATH="/Users/RetinaObst/Documents/Code/Java/ANTLR/antlr-3.5-complete.jar:$CLASSPATH"

# access gitignore.io API
function gi() { curl http://gitignore.io/api/$@ ;}
