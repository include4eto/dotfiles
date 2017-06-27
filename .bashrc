#
# ~/.bashrc
#
export LOCALE="en_US.UTF-8"
export VISUAL=vim
export EDITOR=vim
export PATH=$PATH:~/bin:~/.gem/ruby/2.4.0/bin:~/npm/bin

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto --group-directories-first'

alias move=mv
alias copy=cp

alias t=task
alias tl="task list"
alias tp="task proj"

PS1='[\u \W]\$ '


#function remind() {
#	python ~/projects/doodles/other/reminder_scripts/reminder.py "$@"
#}

#cowthink $(fortune -a -s)
