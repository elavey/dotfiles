" plugins under ~/.vim/bundle
" Pathogen first
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

filetype on
filetype indent on
filetype plugin indent on
filetype plugin on

set nocompatible
set ignorecase

set tabstop=2
set softtabstop=2
set smarttab
set shiftwidth=2
set autoindent
set expandtab

let mapleader= ","
set nocompatible

colorscheme xoria256
syntax on

set number
set ic

" Display status line
set laststatus=2

set wildmenu

" searching on with incrementally match the search
set hlsearch
set incsearch

"Automatically read the file that changes on diesk
set autoread

set nobackup
set noswapfile

nmap <silent> <leader>, :NERDTreeToggle<CR>
nmap <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:?\ ,eol:�


" Edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>


" Clear all buffers
nmap <silent> <leader>wa :1,9000bwipeout<CR>

" cd to the directory containing the file
nmap <silent> <leader>cd :lcd %:h<CR>

cd c:\dev

nmap <silent> <leader>f :FufFileWithCurrentBufferDir<CR>
nmap <silent> <leader>b :FufBuffer<CR>
nmap <silent> <leader>t :FufTaggedFile<CR>

" easy tabbing in visual mode
vmap > >gv<CR>
vmap < <gv<CR>

" Coffee script autocmd when written, compiles file
au BufWritePost *.coffee silent CoffeeMake! -b | cwindow

" CoffeeScript -> path to compiler if not in PATH
" let coffee_compiler = 'path/to/coffee'

" NERDTree
let NERDTreeShowHidden=1
