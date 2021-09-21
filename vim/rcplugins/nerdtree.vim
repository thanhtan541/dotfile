Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } " File navigator

" Use Ctrl-k Ctrl-k to open a sidebar with the list of files
map <C-k><C-k> :NERDTreeToggle<cr>
" Use Ctrl-k Ctrl-f to jump to file location
map <C-k><C-f> :NERDTreeFind<cr>

" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif


