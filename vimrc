set nocompatible        " be iMproved
filetype off            " Needed by vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'klen/python-mode'               " Python mode plugin
Plugin 'kien/ctrlp.vim'                 " Control-P plugin 
Plugin 'scrooloose/nerdtree'            " NERDTree
Plugin 'bling/vim-airline'              " Vim airline
Plugin 'tmhedberg/SimpylFold'           " Nice folding
Plugin 'vim-scripts/indentpython.vim'   " Python indent
Plugin 'Valloric/YouCompleteMe'         " Python code completion
Plugin 'scrooloose/syntastic'           " Syntax Highlighting
Plugin 'nvie/vim-flake8'                " PEP8 support

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


"" Python support
let python_highlight_all = 1

au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
    \ set textwidth=79

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set encoding=utf-8
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF

" NERDTree
map <C-n> :NERDTreeToggle<CR>
