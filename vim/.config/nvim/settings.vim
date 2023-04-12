set encoding=UTF-8
set backspace=indent,eol,start
set undodir=~/.vim/undo-dir
set undofile
set laststatus=2
set noshowmode
set number
set relativenumber
set nocompatible
filetype on
filetype plugin on
filetype indent on
set shiftwidth=2
set tabstop=2
set expandtab
set scrolloff=10
set nowrap
set incsearch
set ignorecase
set smartcase
set showcmd
set showmode
set showmatch
set hlsearch
set history=1000
set completeopt=menu,menuone,noselect

syntax enable
syntax on

set background=dark

if has('termguicolors')
  set termguicolors
endif

colorscheme catppuccin-mocha

map <space> <Leader>
nnoremap <leader>fv :Ex<cr>
nnoremap <leader>ff <cmd>Telescope find_files find_command=rg,--ignore,--hidden,--files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap gd <cmd>Telescope lsp_references<cr>
nnoremap <leader>a <cmd>Telescope diagnostics<cr>

if exists("$VIRTUAL_ENV")
    let g:python3_host_prog=substitute(system("which -a python3 | head -n2 | tail -n1"), "\n", '', 'g')
else
    let g:python3_host_prog=substitute(system("which python3"), "\n", '', 'g')
endif
