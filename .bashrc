parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
test -f /usr/local/etc/bash_completion.d/git-completion.bash && . $_

# export PS1="\[\e]0;\u@\h: \W\a\]${debian_chroot:+($debian_chroot)}\[\033[91;3m\]\u@\h: \[\033[00m\] \[\033[92;4m\]\w\[\033[00m\]\[\033[96;3m\]\$(parse_git_branch)\[\033[00m\] \n\[\033[93;1;3m\]$\[\033[00m\] "
export PS1="\[\e]0; \W\a\]${debian_chroot:+($debian_chroot)}\[\033[91;3m\]\u@\h: \[\033[00m\] \[\033[92;4m\]\w\[\033[00m\]\[\033[96;3m\]\$(parse_git_branch)\[\033[00m\] \n\[\033[93;1;3m\]$\[\033[00m\] "


########## enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
   test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
   alias ls='ls --color=auto'
#    #alias dir='dir --color=auto'
#    #alias vdir='vdir --color=auto'

#    alias grep='grep --color=auto'
#    alias fgrep='fgrep --color=auto'
#    alias egrep='egrep --color=auto'
fi

return
