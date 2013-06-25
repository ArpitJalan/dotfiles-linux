alias svnu='svn up'
alias svns='svn stat'
alias svnl='svn log -l 10'
alias svnc='svn commit'
alias svnr='svn revert'

# shows only relevant changed files (for a java project)
svs() {
  svn stat |  grep "^ \w"
  #grep -v "classpath" | grep -v "/bin" | grep -v ".settings" | grep -v ".project" | grep -v "target"
}

function svndv {
  svn diff $@ | vim -
}
