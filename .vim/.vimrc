" Douglas Black
" Colors {{{
syntax enable           " enable syntax processing
colorscheme badwolf
set termguicolors
" }}}
" Misc {{{
set backspace=indent,eol,start
let g:vimwiki_list = [{'path': '~/.wiki/'}]
set clipboard=unnamed
" }}}
" Spaces & Tabs {{{
set tabstop=4           " 4 space tab
set expandtab           " use spaces for tabs
set softtabstop=4       " 4 space tab
set shiftwidth=4
set modelines=1
filetype indent on
filetype plugin on
set autoindent
" }}}
" UI Layout {{{
set number              " show line numbers
set showcmd             " show command in bottom bar
set nocursorline        " highlight current line
set wildmenu
set lazyredraw
set showmatch           " higlight matching parenthesis
set fillchars+=vert:┃
" }}}
" Searching {{{
set ignorecase          " ignore case when searching
set incsearch           " search as characters are entered
set hlsearch            " highlight all matches
" }}}
" Folding {{{
"=== folding ===
set foldmethod=marker   " fold based on indent level
set foldnestmax=10      " max 10 depth
set foldenable          " don't fold files by default on open
nnoremap <space> za
set foldlevelstart=10   " start with fold level of 1
" }}}
" Line Shortcuts {{{
nnoremap j gj
nnoremap k gk
nnoremap gV `[v`]
" }}}
" Mapping {{{
let mapleader = ","
let maplocalleader = "\\"
"=== command ===
"edit vim file
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
"source vim file
nnoremap <leader>sv :source $MYVIMRC<cr>
"=== normal mode ===
nnoremap <leader>- ddp
nnoremap <leader>_ ddkP
nnoremap <leader>d Yp
nnoremap <leader>u viwU
nnoremap <leader>s' viw<esc>a'<esc>hbi'<esc>el
nnoremap <leader>s" viw<esc>a"<esc>hbi"<esc>el
"=== visual mode ===
vnoremap <leader>s' c''<esc>hp
"=== insert mode ===
inoremap <esc> <nop>
inoremap jk <esc>
inoremap <leader>d <esc>ddi
inoremap <leader>u <esc>viwUei<Right>
" }}}
" Abbreviations {{{
iabbrev ntt Nguyen Thanh Tan
" }}}
" Vim Plug {{{
" call plug#begin('~/.vim/plugged')
" Plug 'bling/vim-airline'
" }}}
" vim:foldmethod=marker:foldlevel=0
