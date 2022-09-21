call plug#begin()

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'morhetz/gruvbox'

Plug 'junegunn/vim-easy-align'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

set completeopt=menu,menuone,noselect

lua require("plugins") 

source ~/.config/nvim/settings.vim
source ~/.config/nvim/statusline.vim

