" MacOS
" # Create the directory
" mkdir -p $HOME/.config/nvim/
" # Edit or create the file
" nvim $HOME/.config/nvim/init.vim
" wget https://raw.github.com/tomcam/neovim/master/init.vim --output-document $HOME/.config/nvim/init.vim
" OR
" # -L means follow redirects
" # -O means use only the base filename, strip off the rest of the pathname 
" curl -L -O https://raw.github.com/tomcam/neovim/master/init.vim
" mkdir -p $HOME/.config/nvim/
" cp init.vim $HOME/.config/nvim

" Windows
" mkdir  %LOCALAPPDATA%\nvim
" nvim %LOCALAPPDATA%\nvim\init.vim

" Ctrl+W goes to the next buffer
map <C-W> :bnext<CR>     
" So does Ctrl+J
map <C-J> :bnext<CR>

" Press backslash then b in normal mode to get list of files
nnoremap <Leader>b :ls<CR>:b<Space>

" Pressing jk is same as pressing Esc
imap jk <esc>

" Turn on syntax highlighting
syntax on
set syntax=whitespace
" Show tabs as visible characters.
"set list

 
" This comment ends with a tab  
  " This comment started with one
" Make tabs 2 spaces wide
set tabstop=2
set softtabstop=2
" Use spaces instead of tabs
" Use Ctrl+V to insert an actual tab character
set expandtab
set shiftwidth=2

" Enable Shift+Insert to paste from
" Windows system clipboard
imap <S-insert> <C-R>*


" Make P work every time
" Thank you, Benoit on Stackoverflow:
" https://stackoverflow.com/questions/7163947/paste-multiple-times 
" p pastes. gv re-selects. y copies it again. 
xnoremap p pgvy

" Make search case insenstivie
set ignorecase
 
" But if capitals are used in search, make it case sensitive
set smartcase

" Show current filename in title
set title

" Enable autoindent
" Not necessary in neovim but a reminder for vim
:set autoindent
 
" Color scheme.
" Favorites are murphy, blue,evening, pablo, peachpuff, slate
colorscheme  murphy

" Show current line number and column
set ruler

" ************* MAKE INVISIBLE CHARACTERS VISIBLE -- CURRENTLY COMMENTED OUT
" Shows trailing tabs. In other words:
" Tabs show as this character but only
" after one non-whitespace character on the line
"set listchars=trail:- 
"set listchars=tab:!·,trail:·
"set listchars=eol:¬,tab:▸\
"set lcs=tab:>-,trail:-
"set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
"
" Show eol like Word used to
" set listchars=eol:¬


