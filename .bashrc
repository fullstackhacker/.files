#aliases for regular stuff
alias ls="ls -lta"

#git aliases
alias gg="git grep"
alias checkout="git checkout"
alias fetch="git fetch upstream"
alias rebase="git rebase upstream/master"
alias fr="fetch && rebase"
alias status="git status"
alias branch="git branch"
alias add="git add ."
alias commit="git commit -m"


#quickly edit and source bashrc
alias vimb="vim ~/.bashrc" 
alias s="source ~/.bash_profile"

# Fix SSH auth socket location so agent forwarding works with tmux
# Predictable SSH authentication socket location.
SOCK="/tmp/ssh-agent-$USER-screen"
if test $SSH_AUTH_SOCK && [ $SSH_AUTH_SOCK != $SOCK ]
then
    ln -sf $SSH_AUTH_SOCK $SOCK
    export SSH_AUTH_SOCK=$SOCK
fi

#show current git branch
function current_git_branch {
    echo `git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'`
}

export CLICOLOR=1
export PS1="\\$ \[\e[1;34m\]\u@\h\[\e[m\] - \[\e[1;34m\]\w\[\e[m\] - \[\033[33m\]\$(current_git_branch)\[\033[00m\] \n> \[$(tput sgr0)\]"
