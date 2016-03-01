#always display all files and permissions as a list
alias ls="ls -lta"

#edit bash_profile
alias vimb="vim ~/.bash_profile"

#quick source
alias s="source ~/.bash_profile"

#show current git branch
function current_git_branch {
    echo `git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'`
}

export CLICOLOR=1
export PS1="\[\033[36m\]\h:\w \[\033[33m\]\$(current_git_branch)\[\033[00m\]$\[\033[00m\] "

source ~/.bash_profile
