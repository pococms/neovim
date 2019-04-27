# Installing Neovim on Ubuntu 18.04

## TODO:
* Try on a new user because I got weird output on the `sudo apt-get install fuse libfuse2 git python3-pip ack-grep -y` step.

### Based on:
* [How to Install NeoVim and Plugins with vim-plug](https://www.linode.com/docs/tools-reference/tools/how-to-install-neovim-and-plugins-with-vim-plug/)

* Go to home directory.

```
cd ~
```

* Try to install tools:

```
# Not sure if this was necessary or even succeeded on my DigitalOcean droplet
sudo apt-get install fuse libfuse2 git python3-pip ack-grep -y
```

This failed because I didn't have a bunch of stuff. A related article called [How To Install Python 3 and Set Up a Programming Environment on Ubuntu 18.04 [Quickstart]](https://www.digitalocean.com/community/tutorials/how-to-install-python-3-and-set-up-a-programming-environment-on-ubuntu-18-04-quickstart) had the key. I had also to do the following:

* Install a boatload of updates:

```
sudo apt update
sudo apt -y upgrade
```

* Install pip:
```
sudo apt install -y python3-pip
```

* Install a number of other Python development tools, entering "y" when asked:

```
sudo apt install build-essential libssl-dev libffi-dev python3-dev
sudo apt install -y python3-venv
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

### Optional, and mostly for me: Import an `init.vim` file.

* First, create a directory for `init.vim`:

```
mkdir -p $HOME/.config/nvim
```

* Copy in the `init.vim` of your choice:

```
# You will almost certainly want to uses someone else's `init.vim`:
wget https://raw.github.com/tomcam/neovim/master/init.vim --output-document $HOME/.config/nvim/init.vim
```
