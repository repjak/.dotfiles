# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Git bash completion
if [ -f ~/.gitcompletion.bash ]; then
	. ~/.gitcompletion.bash
fi

export QTDIR=/usr/lib64/qt4

#export PATH=/home/repicky/eclipse:/usr/local/Trolltech/Qt-4.8.4/bin:/home/repicky/netbeans-7.2.1/bin:$PATH
export PATH=/home/repicky/eclipse:/home/repicky/netbeans-7.2.1/bin:$PATH

# User specific aliases and functions
#alias qmake=qmake-qt4
alias ls="ls --color=always"
alias grep="grep --color=always --binary-files=without-match"
alias egrep="egrep --color=always --binary-files=without-match"
#alias python="python3.2"
alias mock="mock -r epel-6-x86_64"
alias lrelease="lrelease-qt4"
#alias hg pull -u="hg pull --rebase"

# Colors for less
export LESS_TERMCAP_mb=$'\E[01;31m'      # begin blinking
export LESS_TERMCAP_md=$'\E[01;31m'      # begin bold
export LESS_TERMCAP_me=$'\E[0m'          # end mode
export LESS_TERMCAP_se=$'\E[0m'          # end standout-mode                 
export LESS_TERMCAP_so=$'\E[01;44;33m'   # begin standout-mode - info box                              
export LESS_TERMCAP_ue=$'\E[0m'          # end underline
export LESS_TERMCAP_us=$'\E[01;32m'      # begin underline

if [[ ${EUID} == 0 ]] ; then
	PS1='\[\033[01;31m\]\h\[\033[01;34m\] \W \$\[\033[00m\] '
else
	PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] '
fi

export EDITOR=vim
