Path to vim configuration: `~/.vimrc`

# Manual Vim-plug installation
Open terminal and run:
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

# Installation of plugins
Enter vim and then execute:

`:PlugInstall`

And install `ack` by package manager for example by that: `sudo apt-get install ack`

# Symlinks
Make symlink to surf browser if installed:
```
sudo ln -s /usr/local/bin/surf /usr/local/bin/s
```
