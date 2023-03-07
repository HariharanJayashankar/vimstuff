call plug#begin(stdpath('data'))

Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'sheerun/vim-polyglot'
Plug 'Raimondi/delimitMate'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-syntastic/syntastic'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'ervandew/supertab'

call plug#end()

inoremap jk <Esc>

let g:airline#extensions#tabline#enabled = 1


" nerdtree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"

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

" air-line
let g:airline_powerline_fonts = 1
let g:airline_theme = 'jellybeans'
let g:airline#extensions#tabline#enabled = 1


" Enable folding
set foldmethod=indent
set foldlevel=99
"Enable folding with the spacebar
nnoremap <space> za

" open files with ctrl-p
nnoremap <c-p> :Files<cr>

syntax on

set clipboard=unnamed
set noswapfile
set nu rnu

" run code

nnoremap <C-`> :te<enter>
