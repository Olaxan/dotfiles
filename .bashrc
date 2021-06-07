#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias please='sudo'
alias fuck="sudo !!"

alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

shopt -s extglob

export PATH="${PATH}:${HOME}/.local/bin/"
export PATH="${PATH}:${HOME}/.dotnet/tools/"

export FrameworkPathOverride=/etc/mono/4.5

cat /home/fredr/.cache/wal/sequences
