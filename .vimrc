execute pathogen#infect()
syntax on
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

set t_Co=256
colorscheme xoria256
set guifont=menlo\ for\ powerline:h16

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

function! PhpSyntaxOverride()
	hi! def link phpDocTags  phpDefine
	hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
	autocmd!
	autocmd FileType php call PhpSyntaxOverride()
augroup END
