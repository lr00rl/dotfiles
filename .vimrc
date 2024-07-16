syntax on
filetype plugin indent on
set tabstop=4
set autoindent
set smartindent
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
set nowrap
" set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
colorscheme habamax

autocmd BufEnter * if &filetype == "go" | setlocal noexpandtab

set nocompatible
set hlsearch
set ic
set cursorline
set cc=80,100

" tnoremap <ESC> <C-\><C-n>

set <M-1>=1
set <M-2>=2
set <M-3>=3
set <M-4>=4
set <M-5>=5
set <M-6>=6
set <M-7>=7
set <M-8>=8
set <M-9>=9
set <M-0>=0

noremap <M-1> 1gt
noremap <M-2> 2gt
noremap <M-3> 3gt
noremap <M-4> 4gt
noremap <M-5> 5gt
noremap <M-6> 6gt
noremap <M-7> 7gt
noremap <M-8> 8gt
noremap <M-9> 9gt
noremap <M-0> :tablast<CR>

" 使用 Ctrl+h/j/k/l 在窗口间导航
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" 调整窗口大小
set <M-h>=h
set <M-j>=j
set <M-k>=k
set <M-l>=l
noremap <M-h> :vertical resize -2<CR>
noremap <M-j> :resize +2<CR>
noremap <M-k> :resize -2<CR>
noremap <M-l> :vertical resize +2<CR>

noremap <C-j> <C-y>
noremap <C-k> <C-e>

set list
set listchars=space:·,tab:>_

" new command must start with Upper letter.
" 定义一个变量来跟踪当前状态
let g:clean_mode = 0

" 定义 Clean 命令
command! Clean call ToggleClean()

" 定义 ToggleClean 函数
function! ToggleClean()
    if g:clean_mode == 0
        setlocal nonu nornu nolist
        let g:clean_mode = 1
        echo "Switched to clean copy mode"
    else
        setlocal nu rnu list
        let g:clean_mode = 0
        echo "Restored original view"
    endif
endfunction

" 映射 Alt-/ 到 ToggleClean 函数
set <M-/>=/
nnoremap <M-/> :Clean<CR>

set <M-q>=q
set <M-w>=w
nnoremap <M-q> :tabp<CR>
nnoremap <M-w> :tabn<CR>

set <M-a>=a
set <M-s>=s
nnoremap <M-a> :bprevious<CR> ":bp
nnoremap <M-s> :bnext<CR>     ":bn

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
call plug#end()
