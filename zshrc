export JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64
export ANT_HOME=/opt/local/share/java/apache-ant

# Amazon EC2 Stuff
export EC2_HOME=$HOME/ec2-api-tools
export PATH=$PATH:$EC2_HOME/bin
export EC2_CERT=$HOME/.ec2/cert-BVD5RWL2LQNNDQTYPDJUJ3X3UB6A5BF3.pem
export EC2_PRIVATE_KEY=$HOME/.ec2/pk-BVD5RWL2LQNNDQTYPDJUJ3X3UB6A5BF3.pem

alias akhtaboot='ssh -p 788 -i $HOME/.ssh/local_rsa boundless@akhtaboot.com'
alias redis_server='ssh -i $HOME/.ssh/local_rsa ubuntu@ec2-46-51-185-128.eu-west-1.compute.amazonaws.com'
alias topcmds="history | awk '{print $2}' | sort | uniq -c | sort -rn | head"
alias app1='ssh -i $HOME/.ssh/local_rsa -p 788 boundless@92.52.120.41'
alias app2='ssh -i $HOME/.ssh/local_rsa -p 788 boundless@92.52.120.42'
alias app3='ssh -i $HOME/.ssh/local_rsa -p 788 boundless@92.52.120.43'
alias emacs_clean='find . -name "*~" -exec rm {} \;'

PS1="%2c$PR_NO_COLOR%(!.#.$) "
export EDITOR=vim

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

autoload -U compinit
compinit

setopt autocd
setopt auto_pushd
setopt extended_history
setopt auto_resume
setopt extendedglob

alias emacs='emacs -nw'

HISTFILE=~/.zsh-history
HISTSIZE=1000
SAVEHIST=1000

export JAWAKER_DIR=$HOME/workspace/projects/jawaker
export AKHTABOOT_DIR=$HOME/workspace/projects/akhtaboot
export REDIS_DIR=$HOME/workspace/c/redis/src
export HATCHERY_DIR=$HOME/workspace/projects/hatchery
export STATSD_DIR=$HOME/workspace/projects/statsd

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
