syntax on
set background=light
set number                      " Show line numbers
set nocompatible                " be iMproved, required for Vundle
filetype off                    " required for Vundle

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" install NERDTree
Plugin 'scrooloose/nerdtree'

" install python autocomplete
Plugin 'davidhalter/jedi-vim'

" install ctrlp (fuzzy finder)
Plugin 'kien/ctrlp.vim'

" install syntastic (syntax checking)
Plugin 'scrooloose/syntastic'

" install coffeescript mode
Plugin 'kchmck/vim-coffee-script'

" tab completion
Plugin 'ervandew/supertab'

" whitespace trimming
Plugin 'ntpeters/vim-better-whitespace'
let g:strip_whitespace_on_save = 1

" Sublime-text style multiple cursors
Plugin 'terryma/vim-multiple-cursors'

" Git gutter
Plugin 'airblade/vim-gitgutter'

" Fancy statusline
Plugin 'bling/vim-airline'

" All Plugins must be added before the following line
call vundle#end()                       " required for Vundle
filetype plugin indent on               " required for Vundle

" Solarized theme
Plugin 'altercation/vim-colors-solarized'

" Configure ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Configure syntastic

" Recommended settings for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Python syntax checking
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_post_args = '--ignore=E501'
let g:pymode_lint_ignore="E501"

" Python-specific whitespace
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set softtabstop=4
set autoindent

" Coffeescript syntax checking
let g:syntastic_coffee_checkers = ['coffeelint']
let g:syntastic_coffee_coffeelint_args = "--csv --file config.json"

" Coffeescript gets 2 spaces
au BufNewFile,BufReadPost *.coffee setlocal sw=2

" Configure supertab
let g:SuperTabDefaultCompletionType = "context"
colorscheme solarized

