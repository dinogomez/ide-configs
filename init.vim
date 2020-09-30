set encoding=utf-8
set number relativenumber
syntax enable
set noswapfile
set scrolloff=7




call plug#begin('~/.vim/plugged')

Plug 'jaredgorski/spacecamp'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'ianks/vim-tsx'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
let g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-emmet', 'coc-tslint', 'coc-prettier']
Plug 'tpope/vim-surround'
Plug 'mhartington/oceanic-next'
Plug 'rking/vim-detailed'
Plug 'lucasprag/simpleblack'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sirver/ultisnips'
call plug#end()

set termguicolors
colorscheme spacecamp
set pastetoggle=<F3>


if(has("termguicolors"))
    set termguicolors
endif

lua require 'colorizer'.setup()


" NERDCommenter

nmap <C-_> <Plug>NerdCommenterToggle
vmap <C-_> <Plug>NerdCommenterToggle<CR>gv


" NERDTree
let NERDTreeQuitOnOpen=1
let g:NERDTreeMinimalUI=1

nmap <F2> :NERDTreeToggle<CR>


"Tabs
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemode=':t'
nmap <leader>1 :bp<CR>
nmap <leader>2 :bn<CR>
nmap <C-w> :bd<CR>


""""inoremap <left>
""inoremap ' ''<left>
""inoremap ( ()<left>
""inoremap [ []<left>
""inoremap { {}<left>
""inoremap {<CR> {<CR>}<ESC>O
""inoremap {;<CR> {<CR>};<ESC>O

set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set autoindent

set re=0
syntax on
