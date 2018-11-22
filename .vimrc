"required Vundle stuff on lines 2-6, 12-13
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
"plugins
"syntax highlighting for typescript
Plugin 'leafgarland/typescript-vim'
call vundle#end()
filetype plugin indent on
"non-plugin stuff MUST go BELOW this line
"tabs are 2 spaces
set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab
"hybrid-numbered rows
set number
set relativenumber
"show filename
set statusline+=%F
"show line, col, %
set ruler
"autoindent
set autoindent
"no arrowkeys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
"make substitutions global
set gdefault
"stop tmux from messing with vim colors and font
set background=dark
set t_Co=256
