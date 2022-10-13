set encoding=UTF-8
set backspace=indent,eol,start
set undodir=~/.vim/undo-dir
set undofile
set laststatus=2
set noshowmode
set showtabline=0
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

let g:sonokai_style = 'andromeda'
let g:sonokai_better_performance = 1
colorscheme sonokai

highlight Normal ctermbg=none guibg=none
highlight NonText ctermbg=none guibg=none
highlight EndOfBuffer ctermbg=none guibg=NonText

map <space> <Leader>
nnoremap <leader>ff :Files<cr>
nnoremap <leader>fb :Buffers<cr>
nnoremap <leader>fg :Rg<cr>

let $FZF_DEFAULT_COMMAND = 'rg --files --hidden'
let g:fzf_preview_window = ''


