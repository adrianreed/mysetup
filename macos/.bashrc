# Executed when running interactively
[[ $- == *i* ]] || return

[ -n "$PS1" ] && source ~/.bash_profile;
