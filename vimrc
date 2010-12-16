call pathogen#runtime_append_all_bundles()

source ~/.vim/settings/remove_trailing_spaces.vimrc
source ~/.vim/settings/status_line.vimrc
source ~/.vim/settings/gui_tab_label.vimrc
source ~/.vim/settings/keyboard_mapping.vimrc
source ~/.vim/settings/colors.vimrc

set expandtab "convert tabs to spaces
set tabstop=2 "tabs size
set shiftwidth=2 "shift size
set softtabstop=2
set smartindent
set smarttab
set showmatch "shows matching brackets
set lcs=tab:\ \ ,trail:.,extends:$,precedes:$ "Replace special chars with visible chars(tabs=>>, etc.)
set list

set guioptions=egmrLt
set backupdir=~/vim_backups
set directory=~/vim_backups
set tags=tags;
set nocompatible
set hidden
set spell
set hlsearch
set number
set ruler
set visualbell
set wildignore+=tmp/**
set backspace=indent,eol,start
set cursorline                     " Highlight the line that the cursor is on

filetype plugin indent on
let OmniCpp_MayCompleteDot = 0
let OmniCpp_MayCompleteArrow = 0

let g:bufExplorerSplitBelow=0
let g:bufExplorerSortBy='name'       " Sort by the buffer's name.
let g:alternateExtensions_{'m'} = "h"
let g:alternateExtensions_{'mm'} = "h"
let g:alternateExtensions_h = "m,mmc,cpp,cxx,cc,CC"
let NERDTreeChDirMode=2

au VimEnter * NERDTree
au VimEnter * Tlist
