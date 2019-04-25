# My notes on using Neovim

The contents of my commented [init.vim](/init.vim) are of interest to no one but me. Just need a convenient place for this info. This might help you learn where to put your init.vim, though.

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

### To enable Pasting from the Windows System clipboard, add this to init.vim
" Make sure you have this in init.vim, then paste using Shift+Insert
" Paste with <Shift> + <Insert>
imap <S-Insert> <C-R>
