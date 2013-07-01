# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
alias ls="ls -F --color"
alias l="ls -lAh --color"
alias ll="ls -l --color"
alias la='ls -A --color'
alias lsopenports='lsof -i -n -P'
alias grep='grep --color=auto'
alias duf='du -sh * | sort -hr'
