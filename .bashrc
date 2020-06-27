# all aliases
alias cls='clear'
alias ls='ls -F'
alias ll='ls -althr'
alias bit='cd ~/Documents/bitbucket'
alias cpv='rsync -ah --info=progress2'
alias home='cd ~/Documents/'

##git
alias gst='git status'
alias gbr='git branch -a'
alias gcom='git add . && git commit -m'
alias gcl='git clone'
alias gpu='git push -u origin'

#shell alias
alias sourcerc='. ~/.bashrc'

# Set Vim as my default editor
export EDITOR=vim
export HISTTIMEFORMAT="%h %d %H:%M:%S "
export HISTSIZE=10000
shopt -s histappend
export HISTCONTROL=ignorespace:erasedups
export HISTIGNORE="ls:ps:history:clear:cls:ll:pwd:cd:git:vag:less:exit"

#Vagrant aliases
alias gocent='cd ~/Documents/vagrant/centos/'
alias goub='cd ~/Documents/vagrant/ubuntu/'
alias vagstat='vagrant status'
alias vagssh='vagrant ssh'
alias vagdel='vagrant destroy'
alias vagdown='vagrant halt'
alias vagup='vagrant up'


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
 
# Set the proxy if it needs to be set

