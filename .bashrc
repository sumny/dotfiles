# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

screenfetch -d '-gtk'

#export LIBRARY_PATH=/usr/local/lib64:$LIBRARY_PATH
#export LD_LIBRARY_PATH=/usr/local/lib64:$LD_LIBRARY_PATH
#export CPLUS_INCLUDE_PATH=/usr/local/include:$CPLUS_INCLUDE_PATH
#export C_INCLUDE_PATH=/usr/local/include:$C_INCLUDE_PATH

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
