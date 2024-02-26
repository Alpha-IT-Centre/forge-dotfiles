#!/bin/bash

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [[ $EUID -ne 0 ]]; then
    export PS1="\[\e[33m\]\u\[\e[m\]@\[\e[36m\]\h\[\e[m\]:\[\e[31m\]\w\[\e[m\] \\$ "
else
    export PS1="\[\e[31m\]ROOT\[\e[m\]@\[\e[36m\]\h\[\e[m\]:\[\e[31m\]\w\[\e[m\] \\$ "
fi

eval "$(zoxide init -cmd cd bash)"


