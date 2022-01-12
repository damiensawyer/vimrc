# Notes on Neovim
[From here](https://betterprogramming.pub/setting-up-neovim-for-web-development-in-2020-d800de3efacd)
Note that when following that I had to install silversearcher-ag (via apt)
- Install vim-plug     sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
- See [this](https://stackoverflow.com/a/66154403/494635) above vim plug.
I copied the config file to /home/damien/.config/nvim/init.vim then ran ```nvim +PlugInstall```.
