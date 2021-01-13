# todo.sh stuff
alias t='todo.sh'
alias tls='t ls'
function tt() { t ls $1 | head ; }
#
# Show/Hide Dekstop Icons
alias desktopon='defaults write com.apple.finder CreateDesktop true; killall Finder'
alias desktopoff='defaults write com.apple.finder CreateDesktop false; killall Finder'

alias finderpathon='defaults write com.apple.finder _FXShowPosixPathInTitle -bool true; killall Finder'
alias finderpathoff='defaults write com.apple.finder _FXShowPosixPathInTitle -bool false; killall Finder'

#
# silver surfer (ag)
alias agp='ag --pager LESS'
#
# git-open
alias go='git open'

#
# git retry commit message
alias gcF=git commit --no-verify
alias gcr=git commit -t .git/COMMIT_EDITMSG
