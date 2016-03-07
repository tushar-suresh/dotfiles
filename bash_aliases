# File stuff
alias ll='ls -lFtrh'
alias kk='ls -lFth'
alias c='clear'
alias cleanpyc='find . -name *.pyc -delete'

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
