PATH=/Users/branden/bin:$PATH
PS1='\[\e[0;32m\]\u@\h \W$\[\e[0m\] '

export CLICOLOR=1
export LESS="-r"  # Interpret color codes by default.

# <3 vim
PAGER=vimpager
set -o vi

source /usr/local/bin/virtualenvwrapper.sh
