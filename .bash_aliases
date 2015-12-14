# git
alias ga='git add'
alias gc='git commit'
alias gco='git checkout'
alias gcl='git clone'
alias gd='git diff'
alias gdc='git diff --cached'
alias gf='git fetch'
alias gl='git shortlog -8'
alias gpom='git push origin master'
alias gpull='git pull'
alias gpush='git push'
alias grd='git ls-files --deleted -z | xargs -0 git rm'
alias gs='git status'

# grep
alias grep='grep --color'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# ls
alias ls='ls -hF --color=tty --group-directories-first'
alias ll='ls -l --group-directories-first'
alias la='ls -a --group-directories-first'
alias lr='ls -R'
alias l='ls -CF --group-directories-first'
alias dir='ls --color=auto --format=vertial'
alias vdir='ls --color=auto --format=long'

# scp
alias scpdd='scp -P 2222'

# ssh
alias ssh='ssh -c arcfour,blowfish-cbc -C'

# svn
alias sa='svn add'
alias saa="svn status | grep '?' | sed 's/^.* /svn add /' | sed 's/\\\/\//g' | bash"
alias sra="svn status | grep \! | sed 's/^.* /svn rm /' | sed 's/\\\/\//g' |  bash"
alias sc='svn commit'
alias sd='svn diff'
alias sl='svn log -l 5'
alias ss='svn status'
alias sup='svn update'

# etc
alias -- -='cd -'
alias ..='cd ..'
alias ...='cd ../..'
alias cs='cygstart'
alias pong='ping 8.8.8.8'
alias speedtest='wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test100.zip'
alias vi='vim'
alias t='tmux'
