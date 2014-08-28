# SSH / SCP
alias sshhtpc='ssh -p 50 adam@192.168.10.150'
alias sshdd='ssh -p 2222 adam@localhost'
alias scpdd='scp -P 2222'
alias sshco='ssh -p 2223 adam@localhost'
alias sshmills='ssh mansfa2@mills.mcmaster.ca'

# Git
alias ga='git add'
alias gc='git commit'
alias gco='git checkout'
alias gcl='git clone'
alias gd='git diff'
alias gdc='git diff --cached'
alias gf='git fetch'
alias gpush='git push'
alias gpom='git push origin master'
alias gpull='git pull'
alias gl='git shortlog -8'
alias grd='git ls-files --deleted -z | xargs -0 git rm'
alias gs='git status'

# Svn
alias sa='svn add'
alias saa="svn status | grep '?' | sed 's/^.* /svn add /' | sed 's/\\\/\//g' | bash"
alias sra="svn status | grep \! | sed 's/^.* /svn rm /' | sed 's/\\\/\//g' |  bash"
alias sc='svn commit'
alias sd='svn diff'
alias sl='svn log -l 5'
alias ss='svn status'
alias sup='svn update'

# Grep 
alias grep='grep --color'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Directory listings
alias ls='ls -hF --color=tty --group-directories-first'
alias ll='ls -l --group-directories-first'
alias la='ls -a --group-directories-first'
alias lr='ls -R'
alias l='ls -CF --group-directories-first'
alias dir='ls --color=auto --format=vertial'
alias vdir='ls --color=auto --format=long'

# Misc
alias -- -='cd -'
alias ..='cd ..'
alias ...='cd ../..'
alias cs='cygstart'
alias vi='vim'
alias pong='ping 8.8.8.8'
alias t='tmux'
alias w3m='w3m -o anchor_color=yellow -o display_charset=Raw'

