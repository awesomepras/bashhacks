# Set Vim as my default editor
export EDITOR=vim
#bash history tweaks
export HISTTIMEFORMAT="%h %d %H:%M:%S "
export HISTSIZE=10000
shopt -s histappend
export HISTCONTROL=ignorespace:erasedups
export HISTIGNORE="ls:ps:history:clear:cls:ll:pwd:cd:git:vag:less:exit:vaglocal:vagglobal:vagdestroy:vagup:vagrant reload"


#
# include ~/bin in PATH
PATH="/usr/local/sbin:${HOME}/bin:$PATH"
 
# Change LS colors
export LSCOLORS=ExFxBxDxCxegedabagacad
 
# PS1: Bash prompt with color :-)
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
  
# Source functions - this needs to be kept in separate file to avoid
# automatically executing it.
[[ -f ~/.bash_functions ]] && source ~/.bash_functions
# Source aliases file
 if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Set the proxy if it needs to be set

# all aliases
# can also be set in .bash_aliases
alias cls='clear'
alias ls='ls -F'
alias ll='ls -althr'
#alias bit='cd ~/Documents/bitbucket'
alias cpv='rsync -ah --info=progress2'
alias home='cd ~/Documents/'

##git
alias gst='git status'
alias gbr='git branch -a'
alias gcom='git add . && git commit -m'
alias gcl='git clone'
alias gpo='git push -u origin'
alias gpu='git pull'

#shell alias
alias sourcerc='. ~/.bashrc'
alias diff='diff -y  --suppress-common-lines'


#Vagrant aliases
alias vaglocal='vagrant status'
alias vagssh='vagrant ssh'
alias vagdel='vagrant destroy'
alias vagdown='vagrant halt'
alias vagup='vagrant up'
alias vagglobal='vagrant global-status'

#docker related
alias dockerup='open --hide --background -a Docker'
alias vagdup='vagrant up --provider=docker --no-parallel'
alias dockerclean='docker rmi $(docker images -f "dangling=true" -q)'
alias dockerbomb='docker system prune -a'

#kubernetes related
alias k='kubectl'
alias kgp='kubectl get pods -o wide'
alias kgn='kubectl get nodes -o wide'
alias kdump='kubectl cluster-info dump'
alias kdp='kubectl describe pod'


