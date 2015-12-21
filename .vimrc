execute pathogen#infect()
syntax on
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

set t_Co=256
colorscheme xoria256

set linespace=15

set showmode
set nowrap
set smarttab
set tags=tags
set softtabstop=4
set expandtab
set copyindent
set number
set ignorecase
set smartcase
set visualbell
set noerrorbells
set autowrite
set mouse=a

imap jj <esc>

nmap <C-b> :NERDTreeToggle<cr>

" super quick phpunit testing
nmap ,t :!clear && phpunit<cr>
nmap ,m :!clear && phpunit %<cr>

function! PhpSyntaxOverride()
    hi! def link phpDocTags  phpDefine
    hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
    autocmd!
    autocmd FileType php call PhpSyntaxOverride()
augroup END

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manaage vundle
" required!

Bundle 'gmarik/vundle'
filetype plugin indent on      " required!

Bundle 'scrooloose/nerdtree'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'Townk/vim-autoclose'
Bundle 'closetag.vim'
Bundle 'geoffharcourt/vim-matchit'
Bundle 'ctrlpvim/ctrlp.vim'

set backspace=2 " make backspace work like most other apps "

" Track the engine
Plugin 'SirVer/ultisnips'

" Snippets are separate from the engine, add this if you want them:
Plugin 'honza/vim-snippets'

" Trigger configuration.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want UltiliSnips Edit to split your window
let g:UltiSnipsEditSplit="vertical"
