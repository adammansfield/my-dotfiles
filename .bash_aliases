# Windows
alias cs='cygstart'
alias csc='cygstart ~/apps/chrome/GoogleChromePortable.exe'
alias cscal='cygstart ~/apps/chrome/GoogleChromePortable.exe --user-data-dir="C:\Data\apps\chrome\Data\profile" --app=https://www.google.com/calendar/render'
alias cse='cygstart ~/apps/eclipse/eclipse.exe'
alias csg='cygstart ~/apps/gimp/GimpPortable.exe'
alias csgs='cygstart  ~/apps/chrome/GoogleChromePortable.exe --user-data-dir="C:\Data\apps\chrome\Data\profile" --app=http://grooveshark.com/#/apm.mansfield/music'
alias csgc='cygstart ~/apps/gnucash/GnuCashPortable.exe'
alias csk='cygstart ~/apps/keepass/KeePass.exe'
alias csm='cygstart ~/apps/chrome/GoogleChromePortable.exe --user-data-dir="C:\Data\apps\chrome\Data\profile" --app=https://mail.google.com/mail/?shva=1#inbox'
alias csmm='cygstart /cygdrive/c/Program\ Files\ \(x86\)/MediaMonkey/MediaMonkey.exe'
alias csol='cygstart /cygdrive/c/Program\ Files\ \(x86\)/Microsoft\ Office/Office14/OUTLOOK.EXE'
alias csvs='cygstart /cygdrive/c/Program\ Files\ \(x86\)/Microsoft\ Visual\ Studio\ 10.0/Common7/IDE/vcsexpress.exe'
alias cst='cygstart ~/apps/chrome/GoogleChromePortable.exe --user-data-dir="C:\Data\apps\chrome\Data\profile" --app=http://www.toodledo.com/tasks/index.php#main'
alias cspm='csol & cst & cscal & csm'

# Interactive operation
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Git
alias ga='git add'
alias gc='git commit -m'
alias gca='git commit -am'
alias gco='git checkout'
alias gcl='git clone'
alias gd='git diff'
alias gdc='git diff --cached'
alias gp='git push'
alias gpu='git pull'
alias gl='git shortlog -8'
alias grd='git ls-files --deleted -z | xargs -0 git rm'
alias gs='git status'

# Svn
alias sa='svn add'
alias saa="svn status | grep '?' | sed 's/^.* /svn add /' | sed 's/\\/\//g' | bash"
alias sc='svn commit -m'
alias sd='svn diff'
alias sl='svn log -r 'HEAD':'BASE' -l 4'
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

