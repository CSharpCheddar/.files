################################################################################
# My .bashrc
################################################################################
#   ____ ____  _                       ____ _              _     _
#  / ___/ ___|| |__   __ _ _ __ _ __  / ___| |__   ___  __| | __| | __ _ _ __
# | |   \___ \| '_ \ / _` | '__| '_ \| |   | '_ \ / _ \/ _` |/ _` |/ _` | '__|
# | |___ ___) | | | | (_| | |  | |_) | |___| | | |  __/ (_| | (_| | (_| | |
#  \____|____/|_| |_|\__,_|_|  | .__/ \____|_| |_|\___|\__,_|\__,_|\__,_|_|
#                              |_|
#
################################################################################
# Important
################################################################################

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

################################################################################
# Environment Variables
################################################################################

# Less > more
export PAGER=less

# Add .scripts directory to path
export PATH=$PATH:$HOME/.scripts

# Vim's cool, so use that
export EDITOR=vim

################################################################################
# Aliases
################################################################################

# 3 characters = too much typing
alias v='vim'

# 4 characters = also too much typing
alias n='nvim'

# Colorful ls
alias ls='ls --color=auto'

# Colorful long ls w/o hidden files
alias lsl='ls --color=auto -lh'

# Colorful long ls w/ hidden files
alias ll='ls --color=auto -lAh'

# Always run df with -h
alias df='df -h'

# Load .Xresources
alias xup='xrdb ~/.Xresources'

# Dotfiles bare repo
alias dot='/usr/bin/git --git-dir=$HOME/.files --work-tree=$HOME'

################################################################################
# Shell Prompt (starship)
################################################################################

# Set prompt
if [ `command -v starship` ]
then
  eval "$(starship init bash)"
else
 PS1='\[\e[1m\]\u@\h \W$ \[\e[0m\]'
fi
