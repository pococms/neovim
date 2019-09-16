# My notes on using Neovim and Vim

The contents of my commented [init.vim](init.vim) are of interest to no one but me. Just need a convenient place for this info. This might help you learn where to put your init.vim, though.

* For installation instructions, see [Installing on Ubuntu 18.04](https://github.com/tomcam/neovim/blob/master/install-neovim-ubuntu1804.md)

## Configuring with init.vim

[Neovim](https://neovim.io) is pretty much compatible with Vim. Vim looks for the configuration file
`.vimrc` in a special location on startup. Neovim looks for `init.vim`.

### Location of init.vim on MacOS/OSX (Neovim .vimrc equivalent)

Neovim puts its MacOS `.vimrc` equivalent in `$HOME/.config/nvim/init.vim`

So, on a new MacOS install, you'd do this to configure the Neovim init.vim file:

```bash
# Create the directory
mkdir -p $HOME/.config/nvim/
# Edit or create the file
nvim $HOME/.config/nvim/init.vim
```

### Location of init.vim on Windows (Neovim .vimrc equivalent for Windows)

Neovim puts its Windows `.vimrc` equivalent in `%LOCALAPPDATA%\nvim`

The nvim version of .vimrc is named init.vim and goes in this directory:
mkdir  %LOCALAPPDATA%\nvim

So, on a new Windows install, you'd do this to configure the Neovim init.vim file:

```powershell
C:\> nvim %LOCALAPPDATA%\nvim\init.vim
```

#### To enable Pasting from the Windows System clipboard, add this to init.vim
```vim
" Make sure you have this in init.vim, then paste using Shift+Insert
" Paste with <Shift> + <Insert>
imap <S-Insert> <C-R>
```

## Downloading a single file (init.vim) from GitHub using curl

I know you'd never do anything this sloppy or lazy, but I would. You can download
`init.vim` straight from this repo as shown using [curl](https://curl.haxx.se/):

```bash
# -L means follow redirects
# -O means use only the base filename, strip off the rest of the pathname 
curl -L -O https://raw.github.com/tomcam/neovim/master/init.vim
```

You can do the same with wget:

```
 wget https://raw.github.com/tomcam/neovim/master/init.vim --output-document ~/.config/init.vim
 ```
## Vim

### vimrc on MacOS/Linux, etc.

The Vim configuration file `.vimrc` lives in `~/.vimrc`

### vimrc on Windows

The Vim configuration file `.vimrc` lives in `vim %HOMEDRIVE%%HOMEPATH%\.vimrc`:

```
vim %HOMEDRIVE%%HOMEPATH%\.vimrc
```
### Get this vimrc on Windows:

```
: Change to the home directory, where
: Vim expects to find the .vimrc config file.
cd %HOMEDRIVE%%HOMEPATH%
: Copy an example Neovim file to the current directory 
: (this one is compatible with Vim)
curl -L -O https://raw.github.com/tomcam/neovim/master/init.vim
: Rename the Neovim config file to Vim's config file name.
ren init.vim .vimrc
```


### Most of this configuration works on classic Vim, too.

You can use this config file with Vim, which expects it

```
# Copy the init.vim file from GitHub to
# a file named ~/.vimrc.
wget https://raw.github.com/tomcam/neovim/master/init.vim --output-document ~/.vimrc
```
