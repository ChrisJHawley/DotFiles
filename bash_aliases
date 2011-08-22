# enable color support of ls and also add handy aliases
if [ "$TERM" != "dumb" ]; then
    eval "`dircolors -b`"
    alias ls='ls -h --color=auto'
    #alias dir='ls --color=auto --format=vertical'
    #alias vdir='ls --color=auto --format=long'
fi

# some more ls aliases
alias ll='ls -hl'
alias la='ls -hA'
alias l='ls -hCF'

alias screen="screen -U"
alias grep="grep --colour=always"
alias scp="scp -C"
alias mplayer="mplayer -subfont-text-scale 3"
alias less="less -r"
alias konsole="konsole --force-transparency"

# Too used to these from work...
alias psg="ps aux | grep "
alias gmake="make"

alias sshgw="ssh -t -C -X chrihaw@lnsshgw.ms.com malachi"

# vim:ft=sh
