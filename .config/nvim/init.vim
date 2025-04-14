" tabs are 4 spaces
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set smarttab
" except in Makefiles
autocmd FileType make setlocal noexpandtab
" and yaml
autocmd FileType yaml setlocal tabstop=2
autocmd FileType yaml setlocal shiftwidth=2
" hybrid-numbered rows
set number
set relativenumber
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
"set background=dark
"set t_Co=256
" ; =-> : no more WQ!
nnoremap ; :
" ctrl+c ctrl+v to copy/paste
" ctrl-v must be invoked in insert or visual mode
" ctrl-v in normal mode still does a visual block
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+
set maxmempattern=10000
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
map <esc> :noh <CR>
set mouse=
"set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
"set list
autocmd BufEnter * :syntax sync fromstart
call plug#begin()
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'rktjmp/lush.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-context'
Plug 'ggandor/leap.nvim'
Plug 'tpope/vim-repeat'
Plug 'declancm/cinnamon.nvim'
"Plug 'ixru/nvim-markdown'
Plug 'mateuszwieloch/automkdir.nvim'
Plug 'm4xshen/hardtime.nvim'
Plug 'kylechui/nvim-surround'
Plug 'ja-ford/delaytrain.nvim'
" colors
Plug 'sainnhe/everforest' " everforest
Plug 'aktersnurra/no-clown-fiesta.nvim' " no-clown-fiesta
Plug 'heraldofsolace/nisha-vim' " nisha
Plug 'sainnhe/gruvbox-material' " gruvbox-material
" new
call plug#end()
" coq
let g:coq_settings = { 'auto_start': 'shut-up' }
let g:python_highlight_space_errors = 0
" color
if has('termguicolors')
    set termguicolors
endif
let g:everforest_background = 'hard'
let g:everforest_better_performance = 1
let g:gruvbox_material_better_performance = 1
let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_foreground = 'material'
colorscheme gruvbox-material
lua << END
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = gruvbox_dark,
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = false,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {'filename'},
    lualine_x = {'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}
require("ibl").setup {
    exclude = {
        filetypes = { "yaml", "yml" }
    }
}
require("nvim-treesitter.configs").setup {
    highlight = {
        enable = true,
        disable = { "yaml", "json", "markdown" }
    }
}
require("treesitter-context").setup {
    enable = true,
    line_numbers = true,
    mode = "topline"
}
require("leap").create_default_mappings()
require("cinnamon").setup {
    keymaps = { basic=true, extra=true },
    options = { max_delta = { time=250 } }
}
require("automkdir").setup()
require("nvim-surround").setup()
require("delaytrain").setup {
    grace_period = 3
}
END
