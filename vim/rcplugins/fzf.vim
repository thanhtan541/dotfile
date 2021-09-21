Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

let g:fzf_files_options =
  \ '--reverse ' .
  \ '--preview "(coderay {} || cat {}) 2> /dev/null | head -'.&lines.'"'
let g:fzf_layout = { 'down': '~60%' }
nnoremap <C-p> :Files<cr>
let $FZF_DEFAULT_COMMAND = 'ag -g "" --hidden'
