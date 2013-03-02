call pathogen#infect()
filetype plugin on
filetype plugin indent on
"autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType python runtime! autoload/pythoncomplete.vim
syntax on
set number

" proxy
"let $HTTP_PROXY = 'http://proxy.asti.com:8080'
"let $HTTPS_PROXY = 'http://proxy.asti.com:8080'
set hidden

set smartindent
set autoindent
set copyindent
set nowrap
set cindent
set tabstop=4
set smarttab
set shiftwidth=4
set shiftround
set expandtab
set showmatch

" search
set hlsearch
set incsearch
set ignorecase
set smartcase

set pastetoggle=<F2>
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>

set showmode
set cursorline

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

set nobackup
set noswapfile" set colorscheme

let g:molokai_original=1
colorscheme molokai
set laststatus=2
set ruler

" Needed as a workaround because of a problem with AutoComplPop
" https://github.com/sukima/xmledit/issues/15
"
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags noci
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags noci
