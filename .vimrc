filetype plugin on
syntax on 
colorscheme dracula
set t_Co=256
set encoding=utf-8 
set bomb
set shiftwidth=2
set number
set tabstop=2
set lines=35 columns=120
set guifont=Fira_Code:h11
set linespace=6
set nocompatible
set path+=**
set wildmenu

" Plugins settings
nnoremap <C-e> :NERDTreeToggle<CR>
map <Leader>nt :NERDTree %:p:h<CR>
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
let g:startify_bookmarks = [ '~/.vimrc' ]
set wildignore+=*\\tmp\\*,*.swp,*.git,*\\dist\\*,*\\node_modules\\*

" Note: Skip initialization for vim-tiny or vim-small.
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
NeoBundle 'evidens/vim-twig'
NeoBundle 'crusoexia/vim-dracula'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'burnettk/vim-angular'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'matze/vim-move'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'othree/html5.vim'
NeoBundle 'godlygeek/tabular'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'Shougo/denite.nvim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Quramy/tsuquyomi'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'vim-startify'
NeoBundle 'Shougo/vimfiler.vim'
NeoBundle 'tpope/vim-flagship'
NeoBundle 'easymotion/vim-easymotion'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'leafgarland/typescript-vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
