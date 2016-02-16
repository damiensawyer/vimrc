alias dir='ls -al'
alias ll='ls -alh'
PATH="/Applications/Postgres.app/Contents/Versions/9.3/bin:$PATH"
export NVM_DIR="/Users/damiensawyer/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
HISTFILESIZE=100000
if [ -f ~/.bashrc ]; then . ~/.bashrc; fi 
