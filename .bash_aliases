# git
if [ ! -f ~/.git-completion.bash ]; then
  echo "Downloading .git-completion.bash"
  wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -O ~/.git-completion.bash
fi
. ~/.git-completion.bash
__git_complete g __git_main
__git_complete ga _git_add
__git_complete gb _git_branch
__git_complete gc _git_commit
__git_complete gco _git_checkout
__git_complete gd _git_diff
__git_complete gdc _git_diff
__git_complete gl _git_pull
__git_complete glr _git_pull
__git_complete gm _git_merge
__git_complete glog _git_log
__git_complete gp _git_push
__git_complete gs _git_status
alias g='git'
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gco='git checkout'
alias gd='git diff'
alias gdc='git diff --cached'
alias gl='git pull'
alias glr='git pull --rebase'
alias glog='git log --pretty="%Cred%h %Cblue%ad %Creset%s %Cgreen[%ae]" --graph --date=format:%Y%m%d'
alias gm='git merge'
alias gp='git push'
alias grd='git ls-files --deleted -z | xargs -0 git rm'
alias gs='git status'

# grep
alias grep='grep -In --color'
alias egrep='egrep -In --color=auto'
alias fgrep='fgrep -In --color=auto'
alias rgrep='grep -Inr --color=auto'

# ls
alias ls='ls -hF --color=tty --group-directories-first'
alias ll='ls -l --group-directories-first'
alias lla='ls -la --group-directories-first'
alias la='ls -a --group-directories-first'
alias lr='ls -R'
alias l='ls -CF --group-directories-first'
alias dir='ls --color=auto --format=vertial'
alias vdir='ls --color=auto --format=long'

# scp
alias scpdd='scp -P 2222'

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
