# Windows
alias cs='cygstart'
alias csc='cygstart /cygdrive/c/Users/adam_2/AppData/Local/Google/Chrome/Application/chrome.exe'
alias cscal='cygstart /cygdrive/c/Users/adam_2/AppData/Local/Google/Chrome/Application/chrome.exe --app=https://www.google.com/calendar/render'
alias cse='cygstart ~/apps/eclipse/eclipse.exe'
alias csg='cygstart ~/apps/gimp/GimpPortable.exe'
alias csgs='cygstart /cygdrive/c/Users/adam_2/AppData/Local/Google/Chrome/Application/chrome.exe --app=http://grooveshark.com/#/apm.mansfield/music'
alias csgc='cygstart ~/apps/GnuCashPortable/GnuCashPortable.exe'
alias csk='cygstart ~/apps/KeePassX/KeePassX.exe'
alias csm='cygstart /cygdrive/c/Users/adam_2/AppData/Local/Google/Chrome/Application/chrome.exe --app=https://mail.google.com/mail/?shva=1#inbox'
alias csmm='cygstart /cygdrive/c/Program\ Files\ \(x86\)/MediaMonkey/MediaMonkey.exe'
alias csol='cygstart /cygdrive/c/Program\ Files\ \(x86\)/Microsoft\ Office/Office14/OUTLOOK.EXE'
alias csvs='cygstart /cygdrive/c/Program\ Files\ \(x86\)/Microsoft\ Visual\ Studio\ 10.0/Common7/IDE/vcsexpress.exe'
alias cst='cygstart /cygdrive/c/Users/adam_2/AppData/Local/Google/Chrome/Application/chrome.exe --app=http://www.toodledo.com/tasks/index.php#main'
alias cspm='csol & cst & cscal & csm'

# Git
alias ga='git add'
alias gc='git commit -m'
alias gca='git commit -am'
alias gco='git checkout'
alias gcl='git clone'
alias gd='git diff'
alias gdc='git diff --cached'
alias gp='git push'
alias gpom='git push origin master'
alias gpu='git pull'
alias gl='git shortlog -8'
alias grd='git ls-files --deleted -z | xargs -0 git rm'
alias gs='git status'

# Svn
alias sa='svn add'
alias saa="svn status | grep '?' | sed 's/^.* /svn add /' | sed 's/\\\/\//g' | bash"
alias sra="svn status | grep \! | sed 's/^.* /svn rm /' | sed 's/\\\/\//g' |  bash"
alias sc='svn commit -m'
alias sd='svn diff'
alias sl='svn log -r 'HEAD':'BASE' -l 5'
alias ss='svn status'

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
alias ..='cd ..'
alias ...='cd ../..'
alias vi='vim'
alias t='python ~/tasks/t.py --task-dir ~/tasks --list tasks'
alias w3m='w3m -o anchor_color=yellow -o display_charset=Raw'

