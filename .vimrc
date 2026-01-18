set nocompatible
set relativenumber
syntax on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set scrolloff=8
set wrap
set autoindent
set smartindent
set expandtab
set ignorecase
set smartcase
set laststatus=2
set hlsearch
set incsearch
set lazyredraw
set magic
set wildmenu
set wildmode=longest:full,full
set encoding=utf-8
set showmode
set showcmd
set visualbell
set modelines=0
set nobackup
set nowb
set noswapfile
filetype on
set termguicolors
set ruler
set matchpairs+=<:>
set virtualedit=block
set clipboard=unnamedplus

" colorscheme industry
colorscheme habamax


let mapleader = "\<space>"

inoremap jk <esc><right>
nnoremap <Leader>q <Cmd>:q<CR>
nnoremap <Leader><C-q> <Cmd>:q!<CR>
nnoremap <Leader>w <Cmd>:w<CR>
nnoremap <Leader>W <Cmd>:wq<CR>
nnoremap <Leader><bs> <Cmd>:bdelete<CR>
noremap <leader>rw [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gIc<Left><Left><Left><Left>]]
