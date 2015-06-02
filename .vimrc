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

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manaage vundle
" required!

Bundle 'gmarik/vundle'
filetype plugin indent on      " required!

Bundle 'scrooloose/nerdtree'

function! RunPHPUnitTest(filter)
    cd %:p:h
    if a:filter
        normal! T yw
        let result = system("phpunit --filter " . @" . " " . bufname("%"))
    else
        let result = system("phpunit " . bufname("%"))
    endif
    split __PHPUnit_Result__
    normal! ggdG
    setlocal buftype=nofile
    call append(0, split(result, '\v\n'))
    cd -
endfunction

nnoremap <leader>u :call RunPHPUnitTest(0)<cr>
nnoremap <leader>f :call RunPHPUnitTest(1)<cr>
