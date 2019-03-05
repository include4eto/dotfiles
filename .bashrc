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

# append to history instead of overwriting it
shopt -s histappend

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
alias gl='git log'
alias jsc=node
alias gb='git branch'
alias gp='git push'
alias edi='cd /fast_storage/projects/edinburgh'
alias proj='cd /fast_storage/projects'
alias lib='cd /fast_storage/library'
alias c='cd'
alias foreground='command fg'
alias fg='find | grep -i'
alias suspend='systemctl suspend'
alias s='ssh'
alias p='pass'
alias sa='source activate'
alias ..='cd ..'

findsize() {
   dirname=${1:-.}
   find $dirname -type f -exec du -h {} + | sort -r -h | less
}
alias fs=findsize

# set terminal title
setTerminalTitle(){
	str="echo -en '\033]0;${1}\a'";
	PROMPT_COMMAND=$str;
}
alias title=setTerminalTitle $1
alias t=title $1

alias move=mv
alias copy=cp

#PS1='[\u@\h \W]\$ '
# colored PS1 from xubuntu
#PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$ '

# source local bashrc extensions
source ~/bin/bash_local
export PATH="$PATH:/home/include4eto/miniconda3/bin"

# ctrl-s madness
stty -ixon

# directory colors pink
LS_COLORS=$LS_COLORS:'di=0;35:' ; export LS_COLORS
