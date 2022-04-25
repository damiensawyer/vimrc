# Notes on Neovim

## Installing (three ways)

## AppImage (preferred?)

Download nvim.appimage from https://github.com/neovim/neovim/releases
- Run chmod u+x nvim.appimage 
- copy nvim.appimage to /usr/bin or similar 
- alias nvim='/usr/bin/nvim.appimage'

- If your system does not have FUSE you can extract the appimage OR ... you can install fuse (system to allow linux to mount binaries et al as file system) sudo apt install fuse
./nvim.appimage --appimage-extract
./squashfs-root/usr/bin/nvim



## Snap
- Install Snap
- sudo snap install nvim
- it will be somewhere like /snap/bin. I think that's the legacy location (Mx did it), but Arco put it elsewhere. Anyway - it will be in the snap folder
- create an alias to run it from in there, could create a SNAP alias ```snap alias nvim nvim``` (I think). You might have to put /snap/bin (or similar) into your path in .zshrc

## Deb File
- Just get the deb file from github and install with dpkg


## Setting up nvim
Two ways
### Option 1 - using init.vim (this is the legacy way)
- copy init.vim from this folder into ~/.config/nvim/init.vim
- run nvim +pluginstall
- you might have to install silversearcher-ag (via apt)

You MIGHT have to install vim plug... but I don't think so anymore (see below.)

### Option 2 - Full Lua setup. 
This is ALL LUA config. It's different than used in vim. This is what Karsten uses.
- git clone https://github.com/damiensawyer/neovim-config ~/.config/nvim
- Some guy created a cheatsheet in the original repo for this set up. https://github.com/LunarVim/Neovim-from-scratch/pull/19/files

You might (will?) want to go through and tweak / add / delete from the config. I haven't gotten around to it yet. This

#### VIM Plug (deprecated?)
[From here](https://betterprogramming.pub/setting-up-neovim-for-web-development-in-2020-d800de3efacd)
- You have to install vim plug
see:
https://www.linuxfordevices.com/tutorials/linux/vim-plug-install-plugins
The command I typed was 
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim