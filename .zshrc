# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bira"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Ubuntu package
alias Get='sudo apt-get install'
alias Update='sudo apt-get update'
alias Upgrade='sudo apt-get upgrade'

# Server
alias loginHubl='ssh root@www.hubl.cn -p 22000'

# Apache
alias apacheRestart='sudo /etc/init.d/apache2 restart'
alias apacheStart= 'sudo /etc/init.d/apache2 start'
alias apacheConfDir='/etc/apache2/'

# Host
alias editHosts='sudo vim /etc/hosts'

# php _  Laravel
alias art='php artisan'
alias behat="vendor/bin/behat"

# vagrant
alias vaUp="vagrant up"
alias vaDown="vagrant halt"
alias vaSleep="vagrant suspend"
alias vaWake="vagrant resume"
alias vaSSH="vagrant ssh"
alias vaDestroy="vagrant destroy"

# cd
mdcd() {mkdir -p $1 && cd $1}
cdls() {cd $1 && ll}

# vimzshrc
alias vimZshrc="vim ~/.zshrc && source ~/.zshrc"


# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
#DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# PATH
export PATH=$PATH:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games

#Composer bin : drush
export PATH="$HOME/.composer/vendor/bin:$PATH"

# sbt - Scala
export PATH="~/App/sbt/bin:$PATH"

# color256 && tmux  __ http://www.economyofeffort.com/2014/07/04/zsh/
export TERM="xterm-256color"
[ -n "$TMUX" ] && export TERM="screen-256color"

# for vim <C-S>
alias vim="stty stop '' -ixoff ; vim"
#`Frozing' tty, so after any command terminal settings will be restored ttyctl -f 
# rm safely
alias rm='mv -t /tmp'

# grunt completions
eval "$(grunt --completion=zsh)"

# tmux
alias tmux='tmux -2'
