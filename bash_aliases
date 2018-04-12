# File stuff
alias ll='ls -lFtrh'
alias kk='ls -lFth'
alias c='clear'
alias cleanpyc='find . -name *.pyc -delete'
alias ora='less +F "$(ls -rt | tail -1)"'

# Copy stdin content to clipboard
alias x='xclip -selection clipboard'

# Git stuff
alias gs='git status'
alias gb='git branch -vv'
alias gd='git diff'
alias gl='git log -p'
alias glo='git log --oneline'

# Vagrant stuff
alias vup='vagrant up --no-provision && vagrant ssh'
alias vupp='vagrant up --provision && vagrant ssh'
alias vhalt='vagrant halt'

# Times
alias ist='TZ=Asia/Kolkata date'
alias est='TZ=America/New_York date'
alias cst='TZ=America/Chicago date'
alias pst='TZ=America/Los_Angeles date'
alias utc='TZ=UTC date'

# Verbose by default
alias rm='rm -v'
alias cp='cp -v'
alias mv='mv -v'

alias update='sudo apt update && sudo apt upgrade && sudo apt autoremove && sudo apt autoclean'

ag_replace() {
  if [ -z "$1" ]
    then
      echo "No argument supplied"
  else
      ag -l $1 | xargs sed -i -e "s/$1/$2/g"
  fi
}
