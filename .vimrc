set encoding=utf-8
scriptencoding utf-8
set fileencoding=utf-8
set fileencodings=ucs-boms,utf-8,euc-jp,cp932
set fileformats=unix,dos,mac
set ambiwidth=double

" Setting
set nobackup
set noswapfile
set autoread
set hidden
set showcmd
set title
"set visualbell
"set mouse=a
set autoindent
set smartindent
set laststatus=2
"set spell
"set tabstop=4
nmap <Esc><Esc> :nohlsearch<CR><Esc>
noremap! <C-?> <C-h>

" Appearance
set number
set cursorline
"set cursorcolumn
set showmatch
set nolist
syntax on

" Search
set ignorecase
set smartcase
set incsearch
set hlsearch
set wrapscan

" insert mode
imap <C-p> <Up>
imap <C-n> <Down>
imap <C-b> <Left>
imap <C-f> <Right>

" cursor
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" The last position saved
augroup vimrcEx
  au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
  \ exe "normal g`\"" | endif
augroup END

" Delete blank space at end of line
autocmd BufWritePre * :%s/\s\+$//ge
