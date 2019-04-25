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

"
" Make search case insenstivie
set ignorecase
 
" But if capitals are used in search, make it case sensitive
set smartcase

" Show current filename in title
set title
 
" Color scheme.
" Favorites are blue,evening, murphy, pablo, peachpuff, slate
colorscheme  blue

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

