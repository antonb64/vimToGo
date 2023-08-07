
call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'ramojus/mellifluous.nvim'  
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.2' }
Plug 'ojroques/nvim-hardline'
Plug 'numToStr/FTerm.nvim'
Plug 'tanvirtin/vgit.nvim'
Plug 'folke/which-key.nvim'
call plug#end()

" Coc configuration
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"

nnoremap <SPACE> <Nop>
let mapleader=","

lua require('hardline').setup {}
lua require('second')

lua require('whichkey')

" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>


colorscheme mellifluous

syntax on
set hlsearch
set smartcase
set autoindent
set number relativenumber
set confirm
set expandtab
set smarttab
set shiftround
set smartindent

set nobackup
set nowritebackup
set noswapfile

set hidden
set autoread


