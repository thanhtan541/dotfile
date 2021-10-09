" UI Layout {{{
set number              " show line numbers
set relativenumber
set showcmd             " show command in bottom bar
set cursorline        " highlight current line
set wildmenu
set lazyredraw
set showmatch           " higlight matching parenthesis
set fillchars+=vert:┃
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
" Line Shortcuts {{{
nnoremap j gj
nnoremap k gk
nnoremap gV `[v`]
" }}}
" Mapping {{{
" let mapleader = ","
"=== command ===
nnoremap Y y$
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z
" jumplist mutation
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'
"edit vim file
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
"source vim file
nnoremap <leader>sv :source $MYVIMRC<cr>
"=== normal mode ===
nnoremap <leader>- ddp
nnoremap <leader>_ ddkP
nnoremap <leader>d Yp
nnoremap <leader>u viwU
"=== visual mode ===
vnoremap <leader>s' c''<esc>hp
vnoremap <leader>ts :s/\(\l\)\(\u\)/\1\_\l\2/g<cr>
vnoremap <esc> <nop>
vnoremap jk <esc>
"=== insert mode ===
inoremap <esc> <nop>
inoremap jk <esc>
inoremap <leader>d <esc>ddi
inoremap <leader>u <esc>viwUei<Right>
" Moving text
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
" }}}
" Folding {{{
"=== folding ===
set foldmethod=marker   " fold based on indent level
set foldnestmax=10      " max 10 depth
set foldenable          " don't fold files by default on open
nnoremap <space> za
set foldlevelstart=10   " start with fold level of 1
" }}}
