
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
Plug 'MunifTanjim/nui.nvim'
Plug 'folke/noice.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'ThePrimeagen/harpoon'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
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

nnoremap <leader>hg <cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>
nnoremap <leader>hm <cmd>lua require("harpoon.mark").add_file()<cr>
nnoremap <leader>hn <cmd>lua require("harpoon.ui").nav_next()<cr>
nnoremap <leader>hp <cmd>lua require("harpoon.ui").nav_prev()<cr>

colorscheme mellifluous

syntax on
set hlsearch
set smartcase
set autoindent
set number
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
filetype plugin indent on
set tabstop=4
set shiftwidth=4

lua require('diagnostics')

" Setup the bufferline
set termguicolors
lua << EOF
require("bufferline").setup{}
EOF

