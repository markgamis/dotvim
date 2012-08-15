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

set smartindent
set cindent
set tabstop=4
set shiftwidth=4
set expandtab

set pastetoggle=<F2>
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode
