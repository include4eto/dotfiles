#
# ~/.bashrc
#
export LOCALE="en_US.UTF-8"
export VISUAL=vim
export EDITOR=vim
export PATH=$PATH:~/bin:~/.gem/ruby/2.4.0/bin:~/npm/bin

# Set GPG TTY (for unlocking keys)
export GPG_TTY=$(tty)

# Refresh gpg-agent tty in case user switches into an X session
gpg-connect-agent updatestartuptty /bye >/dev/null

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto --group-directories-first'
alias l=ls
alias h=history
alias g=git
alias gs='git status'

alias move=mv
alias copy=cp

PS1='[\u@\h \W]\$ '

# source local bashrc extensions
source ~/bin/bash_local

#	python ~/projects/doodles/other/reminder_scripts/reminder.py "$@"
#}

#cowthink $(fortune -a -s)

export PATH="$PATH:/home/include4eto/.miniconda3/bin"
