syntax on
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set guifont=Iosevka\ 20 
set guioptions-=m
set guioptions-=T
set guicursor=n-v-c:ver25-Cursor/lCursor-blinkwait300-blinkon200-blinkoff150
set noesckeys
set relativenumber
set number
set ignorecase
set smartcase
set incsearch
set cinoptions=l1
set modeline
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
colorscheme habamax

autocmd BufEnter * if &filetype == "go" | setlocal noexpandtab

set nocompatible
set hlsearch
set cursorline
