#
# ~/.bashrc
#
export LOCALE="en_US.UTF-8"
export VISUAL=vim
export EDITOR=vim
export PATH=$PATH:~/bin:~/bin/matlab:~/.gem/ruby/2.4.0/bin:~/npm/bin

# dotnet core stuff
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export DOTNET_SKIP_FIRST_TIME_EXPERIENCE=1

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
alias gitc='git-commit'
alias jsc=node

# set terminal title
setTerminalTitle(){
	str="echo -en '\033]0;${1}\a'";
	PROMPT_COMMAND=$str;
}
alias title=setTerminalTitle $1
alias t=title $1

alias move=mv
alias copy=cp

PS1='[\u@\h \W]\$ '

# source local bashrc extensions
source ~/bin/bash_local
export PATH="$PATH:/home/include4eto/.miniconda3//bin"
