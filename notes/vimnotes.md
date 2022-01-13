# Extra VIM Notes. asdaskdjhasdh
Copy these into my normal notes (had issue git cloning into linux machines due to a bug)

## Installation
[Needed to use Snap For Raspberry Pi](https://raspberrypi.stackexchange.com/a/119934/107719<Paste>)



## Commands
Note that you can press TAB in the command mode (after the :) to show suggestions
:checkhealth
:set number relativenumber
:e newfile.txt   -> creates an empty BUFFER with the file name (ready to save);
:bn  -> next buffer
:bp  -> prev buffer

## Misc tricks
ctrl-Z  - background VIM
jobs    - show background jobs (in shell)
fg      - foreground a job. Type a number from jobs if there are multiple. 
A       - Append to the current line
C       - Delete the rest of the line from here.  
Navigate html Tags - This is great v a t [or] v i t  to select inner or outer tags (https://stackoverflow.com/a/28563284/494635)

## Links
[cutting to system clipboard](https://vi.stackexchange.com/a/23133/5998)
[Karsten's Config Needs Neovim v6](https://github.com/damiensawyer/neovim-config)


# Notes on Neovim
[From here](https://betterprogramming.pub/setting-up-neovim-for-web-development-in-2020-d800de3efacd)
Note that when following that I had to install silversearcher-ag (via apt)
I copied the config file to /home/damien/.config/nvim/init.vim then ran ```nvim +PlugInstall```.
