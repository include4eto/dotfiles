
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
rm -Rf ~/.cache/sessions/*
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startxfce4

#xmodmap .xmod_caps_lock_map