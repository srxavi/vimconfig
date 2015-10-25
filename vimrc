set nocompatible        " be iMproved
filetype off            " Needed by vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'klen/python-mode'       " Python mode plugin
Plugin 'kien/ctrlp.vim'         " Control-P plugin         
Plugin 'scrooloose/nerdtree'    " NERDTree

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


syntax enable
set tabstop=4		    " number of visual spaces per tab
set softtabstop=4 	    " number of spaces in tab when editing
set expandtab		    " tabs are spaces
set number		        " show line numbers
set showcmd		        " show command in bottom jar
set cursorline		    " highlight current line
filetype indent on 	    " load filetype-specific indent files
set wildmenu		    " visual autocomplete for command menu
set lazyredraw		    " redraw only when we need to
set showmatch 		    " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set autoindent          " autoindent code
set shiftwidth=4        " when using shifting do it by 4 spaces

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested foldmax
" space open/closes folds
nnoremap <space> za
set foldmethod=indent   " fold based on indent level

" Movement
" move vertivally by visual line
nnoremap j gj
nnoremap k gk
" move to beginning/end of line
nnoremap B ^
nnoremap E $

" highlight last inserted text
nnoremap gV `[v`]

" Leader shortcuts
let mapleader=","

" jk is escape
inoremap jk <esc>

" toggle gundo
nnoremap <leader>u :GundoToggle<CR>

"" Python
" Enable all Python syntax highlighting
let python_highlight_all = 1
let g:pymode=1
