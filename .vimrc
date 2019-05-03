" start Vundle config
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" start plugins
" syntax highlighting for typescript
Plugin 'leafgarland/typescript-vim'
" end plugins
call vundle#end()
filetype plugin indent on
" end Vundle config

" tabs are 4 spaces
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set smarttab
" hybrid-numbered rows
set number
set relativenumber
" show filename
set statusline+=%F
" show line, col, %
set ruler
" autoindent
set autoindent
" no arrowkeys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
" make substitutions global
set gdefault
" stop tmux from messing with vim colors and font
set background=dark
set t_Co=256
" ; =-> : no more WQ!
nnoremap ; :
" ctrl+c ctrl+v to copy/paste
" ctrl-v must be invoked in insert or visual mode
" ctrl-v in normal mode still does a visual block
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+
