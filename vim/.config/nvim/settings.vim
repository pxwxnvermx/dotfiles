set encoding=UTF-8
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

nnoremap <F3> :NERDTreeToggle<cr>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> K :call <SID>show_documentation()<CR>
inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

let g:coc_global_extensions = ['coc-tsserver', 'coc-eslint']

