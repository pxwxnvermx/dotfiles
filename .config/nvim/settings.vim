set encoding=utf8
set backspace=indent,eol,start
set undodir=~/.vim/undo-dir
set undofile
set laststatus=2
set noshowmode
set showtabline=2
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

syntax enable
syntax on
set termguicolors
set background=dark
colorscheme gruvbox
let g:gruvbox_contrast_dark="hard"

nnoremap <F3> :NERDTreeToggle<cr>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

