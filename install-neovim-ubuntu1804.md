# Installing Neovim on Ubuntu 18.04

## TODO:
* Try on a new user because I got weird output on the `udo apt-get install fuse libfuse2 git python3-pip ack-grep -y` step.

### Based on:
* [How to Install NeoVim and Plugins with vim-plug](https://www.linode.com/docs/tools-reference/tools/how-to-install-neovim-and-plugins-with-vim-plug/)

* Go to home directory.

```
cd ~
```

* Install tools:

```
# Not sure if this was necessary or even succeeded on my DigitalOcean droplet
sudo apt-get install fuse libfuse2 git python3-pip ack-grep -y
```

* Copy over the latest Neovim binary.
```
$ wget --quiet https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage --output-document nvim
```

* Make it executable and can be used by everyone:

``` 
chmod +x nvim
sudo chown root:root nvim
```

* Move it onto the path so it's accessible to every one.

```
sudo mv nvim /usr/bin
```

* Optional, and mostly for me: Import an `init.vim` file.

```
mkdir -p .config/nvim
# You will almost certainly want to uses someone else's `init.vim`:
wget https://raw.github.com/tomcam/neovim/master/init.vim --output-document ~/.config/init.vim
```
