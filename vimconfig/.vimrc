" Vundle config

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'

"From here other plugins from the original Vundle config
Plugin 'scrooloose/nerdtree'        
Plugin 'skammer/vim-css-color'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'groenewege/vim-less'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/syntastic'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" End of Vundle config

" General
set number  " Show line numbers
set linebreak " Break lines at word (requires Wrap lines)
set showbreak=+++ " Wrap-broken line prefix
set textwidth=100 " Line wrap (number of cols)
set showmatch " Highlight matching brace
set visualbell  " Use visual bell (no beeping)
 
set hlsearch  " Highlight all search results
set smartcase " Enable smart-case search
set ignorecase  " Always case-insensitive
set incsearch " Searches for strings incrementally
 
set autoindent  " Auto-indent new lines
set expandtab " Use spaces instead of tabs
set shiftwidth=2  " Number of auto-indent spaces
set smartindent " Enable smart-indent
set smarttab  " Enable smart-tabs
set softtabstop=2 " Number of spaces per Tab
 
" Advanced
set ruler " Show row and column ruler information
 
set undolevels=1000 " Number of undo levels
set backspace=indent,eol,start  " Backspace behaviour
 
 
" Generated by VimConfig.com

set mouse=a " activate mouse

" Autoload NERDTree if no file specified

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Auto close NERDTree if no more files

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Show hidden files in NERDTree

let NERDTreeShowHidden=1

syntax on

" enable copy to clipboard

set clipboard=unnamed

" copy to clipboard with Ctrl-C

map <C-x> :!pbcopy<CR>
vmap <C-c> :w !pbcopy<CR><CR>

" paste from clipboard with Ctrl-V

set pastetoggle=<F10>
inoremap <C-v> <F10><C-r>+<F10>

"""""""""""""""""""""""""""
" Git-gutter configuration
"""""""""""""""""""""""""""

let g:gitgutter_updatetime = 750
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1

"""""""""""""""""""""""""""
" Syntastic configuration
"""""""""""""""""""""""""""

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

" so that syntastic uses .jshintrc files if present - http://stackoverflow.com/questions/28573553/how-can-i-make-syntastic-load-a-different-checker-based-on-existance-of-files-in

autocmd FileType javascript let b:syntastic_checkers = findfile('.jshintrc', '.;') != '' ? ['jshint'] : ['standard']

"""""""""""""""""""""""""""
" Custom (no plugin related)
"""""""""""""""""""""""""""

" show filename
set statusline+=%F
