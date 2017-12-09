set macligatures
set guifont=Fira\ Code:h16
set encoding=utf-8
set noswapfile
syntax enable
set number
set relativenumber
set ruler
colorscheme monokai
set transparency=10
set tabstop=2
set shiftwidth=2
set lines=35 columns=120
macmenu File.Print key=<nop>
let g:move_key_modifier = 'D'
map <D-p> :CtrlP<CR>
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git|tmp\|dist\|swp|jpg|png|img\'

te: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'evidens/vim-twig'
NeoBundle 'leafgarland/typescript-vim'
NeoBundle 'Quramy/vim-js-pretty-template'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

