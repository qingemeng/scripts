##----GIT------
alias gs='clear ;and git status'
alias gb='git branch'
alias gbranch='git rev-parse --abbrev-ref HEAD' #get current branch name
alias gl="clear ;and git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gt='git tag'
alias grm='git rm'
alias gps='git push'
alias gbi='git bisect'
alias gbg='git bisect good'
alias gbb='git bisect bad'
alias gco='git checkout'
alias gm='git merge'
alias gmt='git mergetool'
alias gdt='git difftool'
alias gp='git pull'
alias gpr='git pull --rebase'
alias gup='git stash ;and git pull --rebase ;and git stash apply'
alias gr='git rebase'
alias gri='git rebase -i'
alias gst='git stash'
alias gsta='git stash apply'
alias gunstage='git reset HEAD'

# alias for ruby
alias brspec='bundle exec rspec'
alias brake='bundle exec rake'

# checkout pull request
function gcopr
  git fetch origin pull/$argv/head:pr-$argv ;and git checkout pr-$argv;
end

#commit
function gc
  git commit -m "$argv"
end

#cherry-pick
function gcp
  git cherry-pick $argv
end

# add
function ga
  git add $argv
end

# difftool
function gd
  git difftool $argv
end

# publish branch to remote repo
function gpub
  git push -u origin (gbranch)
end

# open url to github repo
function gopen
  open (_getRemoteBranchUrl)
end

# publish branch to remote repo and open url to it in github
function gpubo
  gpub ;and gopen
end

# delete remote branch
function gunpub
  git push origin :(gbranch)
end

function _getRemote
  git config --get remote.origin.url
end

function _getRemoteBranchUrl
  set remote (_getRemoteUrl)
  set branch (gbranch)
  # remote
  echo $remote/tree/$branch
end

function _getRemoteUrl
  _getRemote | sed -e 's/\(\.git\)*$//g'
end
thefuck --alias | source
set -xg THEFUCK_OVERRIDDEN_ALIASES 'git' 
##----/GIT------

## autojump
if test -f $HOME/.autojump/share/autojump/autojump.fish; . $HOME/.autojump/share/autojump/autojump.fish; end

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.fish ]; and . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.fish
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.fish ]; and . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.fish

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.fish.inc" ]; if type source > /dev/null; source "$HOME/google-cloud-sdk/path.fish.inc"; else; . "$HOME/google-cloud-sdk/path.fish.inc"; end; end

#GOLANG
set -gx DEV $HOME/Documents/dev
set -x -U GOPATH $DEV/go
set -U fish_user_paths $GOPATH/bin/ $fish_user_paths
if test -f ~/.asdf/asdf.fish; source ~/.asdf/asdf.fish; end

## android home
set -gx ANDROID_HOME $HOME/Library/Android/sdk
set -U fish_user_paths $ANDROID_HOME/tools $fish_user_paths
set -U fish_user_paths $ANDROID_HOME/platform-tools $fish_user_paths

## python
alias python=python3
alias pip=pip3

set -gx USER_BASE_PATH (python -m site --user-base)
set -U fish_user_paths $USER_BASE_PATH/bin $fish_user_paths
