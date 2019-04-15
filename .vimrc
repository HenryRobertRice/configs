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
" CTRL-C and CTRL-Insert are Copy
vnoremap <C-C> "+y
vnoremap <C-Insert> "+y
" CTRL-V and SHIFT-Insert are Paste
map <C-V> "+gP
map <S-Insert> "+gP
cmap <C-V> <C-R>+
cmap <S-Insert> <C-R>+
" Use CTRL-Q to do what CTRL-V used to do
noremap <C-Q> <C-V>
