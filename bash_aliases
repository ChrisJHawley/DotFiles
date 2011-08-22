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

alias rawconnect="ssh -X -L 6000:raw:5902 -L 8090:digicam:80 -L 8091:192.168.1.132:80 -L 8092:192.168.1.159:80 -L 6001:diged1:5900 -L 6002:diged2:5900 -L 6003:diged3:5900 -L 6004:web1:5900 chawley@137.205.210.18"
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
