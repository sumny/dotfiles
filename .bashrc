#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

screenfetch -d '-gtk'

export QEMU_AUDIO_DRV=alsa

if [ -d "/opt/intel/compilers_and_libraries_2016.3.210/linux/bin/intel64" ] ; then
    PATH="/opt/intel/compilers_and_libraries_2016.3.210/linux/bin/intel64:$PATH"
fi
