export PATH="./bin:$HOME/.rbenv/shims:/usr/local/bin:/usr/local/sbin:$HOME/.sfs:$ZSH/bin:$PATH"

export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"

# rbenv
export RBENV_ROOT="${HOME}/.rbenv"
if [ -d "${RBENV_ROOT}" ]; then
  export PATH="${PATH}:${RBENV_ROOT}/bin"
  eval "$(rbenv init -)"
fi

# play framework
export PLAY_HOME=/opt/play
export PATH="${PATH}:${PLAY_HOME}"

# node.js
export NODE_HOME=/opt/node
export PATH="${PATH}:${NODE_HOME}/bin"

# java
export JAVA_HOME=/usr/lib/jvm/java-7-oracle/
export PATH="${PATH}:${JAVA_HOME}/bin"

# elixir
export ELIXIR_HOME=/opt/elixir
export PATH="${PATH}:${ELIXIR_HOME}/bin"

# totvs ecm
export ECM_HOME=/opt/byYou/SocialECM
export JBOSS_HOME=${ECM_HOME}/JBoss-7.1.1/

