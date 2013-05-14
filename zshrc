# # Add ANTLR to Classpath
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
plugins=(git)

#----------------------------OH-MY-ZSH---------------------------------------

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bira-git"

source $ZSH/oh-my-zsh.sh

#--------------------Customize to your needs...------------------------------

# ssh to Yallara and Numbat RMIT
alias yallara='ssh s3424259@yallara.cs.rmit.edu.au'
alias numbat='ssh s3424259@numbat.cs.rmit.edu.au'

# shortcut to my github folder
alias 2github='cd ~/Documents/Code/github/'

# better git log
alias git-log='git log --all --decorate --abbrev-commit --oneline --graph'
# alias for a more personal git log
alias gitlog='git log --decorate --stat --graph --pretty=format:"%C(yellow)%d%Creset %Cgreen%h%Creset (%ar - %Cred%an%Creset), %s%n"'
