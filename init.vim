call plug#begin(stdpath('data'))

Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'Raimondi/delimitMate'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-syntastic/syntastic'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'ervandew/supertab'
Plug 'JuliaEditorSupport/julia-vim'
Plug 'quarto-dev/quarto-nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'jmbuhr/otter.nvim'
Plug 'nvim-treesitter/nvim-treesitter'

call plug#end()

filetype plugin on
inoremap jk <Esc>
nnoremap j gj
nnoremap k gk

" terminal
nnoremap ` :te<enter>
tnoremap jk <C-\><C-n>

" Buffer stuff

" Lists buffers and asks for a number
nnoremap gb :buffers<CR>:buffer<Space>
map <s-Tab> :bp<CR>
map <Tab> :bn<CR>



" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

let mapleader = "<Space>"

" nerdtree
let g:NERDTreeWinPos = "right"
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <leader>n :NERDTreeFocus<CR>

" true colours
colorscheme minimalist

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

" some langauge specific stuff
au BufNewFile,BufRead *.py,*.r,*.m,*.jl,*.do
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=120 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |


set encoding=utf-8
" airline

if !exists('g:airline_symbols')
   let g:airline_symbols = {}
endif

let g:airline_symbols_ascii = 1

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'

let g:airline_theme = 'jellybeans'
let g:airline#extensions#tabline#enabled = 1


" Enable folding
set foldmethod=indent
set foldlevel=99

syntax on

set clipboard=unnamed
set noswapfile
set nu rnu

set backspace=indent,eol,start " let backspace delete over lines
set autoindent " enable auto indentation of lines
set smartindent " allow vim to best-effort guess the indentation
set pastetoggle=<F2> " enable paste mode

