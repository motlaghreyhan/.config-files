# .bashrc

# User specific aliases and functions
. .alias

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/rmotlagh/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

PATH=$PATH:/home/rmotlagh/bin:/usr/local/homebrew
export PATH

# autostart tmux on terminal launch                                                                                                                                                                                                                                                   [0/1]
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
          exec tmux
fi
