source ~/.aliases
source ~/.bash_prompt

# bash history; based on http://unix.stackexchange.com/a/48113/182966
## no duplicate entries
export HISTCONTROL=ignoredups
## big big history
export HISTSIZE=100000
export HISTFILESIZE=100000
## append to history, don't overwrite it
shopt -s histappend
## Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
