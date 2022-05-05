# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

RED="\[\e[0;31m\]"
LPURPLE="\[\e[1;35m\]"
CYAN="\[\e[0;36m\]"
WHITE="\[\e[m\]"
GREEN="\[\e[0;32m\]"
LGREEN="\[\e[1;32m\]"
LBLUE="\[\e[1;34m\]"
BROWN="\[\e[0;33m\]"

export PS1="$BROWN[$CYAN\u-\h$WHITE:$LBLUE\W$BROWN]$WHITE$ "

export PATH=$HOME/.local/bin:$PATH
export EDITOR=vim

export LS_OPTIONS='--color=auto'
export CLICOLOR='Yes'
export LS_COLORS='di=36:ln=36:so=31:pi=33:ex=32:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43'

#eval "$(/opt/homebrew/bin/brew shellenv)"

PATH=$PATH:/home/rmotlagh/bin:/usr/local/homebrew
export PATH

# autostart tmux on terminal launch                                                                                                                                                                                                                                                   [0/1]
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
          exec tmux
fi
