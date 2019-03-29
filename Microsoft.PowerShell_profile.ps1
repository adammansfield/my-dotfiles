Import-Module posh-git

Function GitAdd { & git add $args }
Function GitBranch { & git branch $args }
Function GitCommit { & git commit $args }
Function GitCheckout { & git checkout $args }
Function GitDiff { & git diff $args }
Function GitDiffCached { & git diff --cached $args }
Function GitNoArguments { & git $args }
Function GitPull { & git pull $args }
Function GitPullRebase { & git pull --rebase $args }
Function GitLog { & git log --pretty="%Cred%h %Cblue%ad %Creset%s %Cgreen[%ae]" --graph --date=format:%Y%m%d $args }
Function GitMerge { & git merge $args }
Function GitPush { & git push $args }
Function GitStatus { & git status $args }

Set-Alias g GitNoArguments -Scope Private
Set-Alias ga GitAdd -Scope Private
Set-Alias gb GitBranch -Scope Private
Set-Alias gc GitCommit -Scope Private -Option AllScope -Force
Set-Alias gco GitCheckout -Scope Private
Set-Alias gd GitDiff -Scope Private
Set-Alias gdc GitDiffCached -Scope Private
Set-Alias gl GitPull -Option AllScope -Force
Set-Alias glr GitPullRebase -Scope Private
Set-Alias glog GitLog -Scope Private
Set-Alias gm GitMerge -Scope Private -Option AllScope -Force
Set-Alias gp GitPush -Scope Private -Option AllScope -Force
Set-Alias gs GitStatus -Scope Private
