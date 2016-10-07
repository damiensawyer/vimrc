alias dir='ls -al'
alias ll='ls -alh'
alias bs='cd ~/code/DNS/BodyshopWindows'
alias gp='~/gp.sh'
PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"
export NVM_DIR="/Users/damiensawyer/.nvm"
export HOMEBREW_GITHUB_API_TOKEN="fb994736d4a61f735a3676b834853eb48c96c2be"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
HISTFILESIZE=100000
if [ -f ~/.bashrc ]; then . ~/.bashrc; fi 
export NVM_DIR=~/.nvm
. $(brew --prefix nvm)/nvm.sh
PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
