" Vimrc
"
" This file contains the minimal settings to set the foundation, with the
" majority of the configuration and settings living in files spread between
" vim/rcfiles and vim/rcplugins

set nocompatible

" Need to set the leader before defining any leader mappings
let mapleader = ","

function! s:SourceConfigFilesIn(directory)
  let directory_splat = '~/.vim/' . a:directory . '/*'
  for config_file in split(glob(directory_splat), '\n')
    if filereadable(config_file)
      execute 'source' config_file
    endif
  endfor
endfunction

" Install vim-plug for vim and neovim
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Force shell to /bin/bash to avoid E484 can't find tmp files in /var/folders/*
set shell=/bin/bash

call plug#begin('~/.vim/plugged')
call s:SourceConfigFilesIn('rcplugins')
call plug#end()

colorscheme palenight " Activate the theme

call s:SourceConfigFilesIn('rcfiles')
