# Git branch in prompt:
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

export V1_API_AUTH_TOKEN_LIFESPAN=2229

alias be="bundle exec"
alias gs="git status"
alias gc="git commit -m"
alias gp="git push"
alias ga="git add ."
alias gb="git branch"
alias gd="git diff"
alias gco="git checkout"
