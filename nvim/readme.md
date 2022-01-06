# Notes on Neovim
[From here](https://betterprogramming.pub/setting-up-neovim-for-web-development-in-2020-d800de3efacd)

- You have to install vim plug
see:
https://www.linuxfordevices.com/tutorials/linux/vim-plug-install-plugins

The command I typed was 

curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

NOTE THAT I CHANGED THE PATH from what was in the article to put it in the nvim config, not ~/.vim. 

Note that when following that I had to install silversearcher-ag (via apt)
I copied the config file to /home/damien/.config/nvim/init.vim then ran ```nvim +PlugInstall```.


