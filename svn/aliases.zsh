alias svnu='svn up'
alias svnr='svn revert'
alias sst='svn stat'
alias sstt='svn stat |  grep "^ \w"'
alias slog='svn log -l 10'
alias scm='svn commit'

function sdf {
  svn diff $@ | vim -
}
