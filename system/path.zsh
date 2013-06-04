export PATH="./bin:$HOME/.rbenv/shims:/usr/local/bin:/usr/local/sbin:$HOME/.sfs:$ZSH/bin:$PATH"

export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"

# rbenv
export RBENV_ROOT="${HOME}/.rbenv"
if [ -d "${RBENV_ROOT}" ]; then
  export PATH="${RBENV_ROOT}/bin:${PATH}"
  eval "$(rbenv init -)"
fi

# play framework
export PLAY_PATH=/opt/play
export PATH="${PLAY_PATH}:${PATH}"

# node.js
export NODE_HOME=/opt/node
export PATH="${NODE_HOME}/bin:${PATH}"

# java
export JAVA_HOME=/usr/lib/jvm/java-7-oracle/
export PATH="${JAVA_HOME}/bin:${PATH}"

# totvs ecm
export ECM_HOME=${HOME}/.ecm
export JBOSS_HOME=${ECM_HOME}/JBoss-7.1.1/
