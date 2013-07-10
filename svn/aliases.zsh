alias svnu='svn up'
alias svns='svn stat'
alias sstt='svn stat |  grep "^ \w"'
alias svnl='svn log -l 10'
alias svnc='svn commit'
alias svnr='svn revert'

# shows only relevant changed files (for a java project)
svs() {
  svn stat | grep -v "classpath" | grep -v "/bin" | grep -v ".settings" | grep -v ".project" | grep -v "target"
}

function sdf {
  svn diff $@ | vim -
}


function svnls {
  if [ -z "$1" ]; then
    svs
  else
    revision=$1
    previous=$((revision-1))
    svn diff -r $revision:$previous --summarize
  fi
}

