call pathogen#runtime_append_all_bundles()

set expandtab "convert tabs to spaces
set tabstop=2 "tabs size
set shiftwidth=2 "shift size
set softtabstop=2
set smartindent
set smarttab
set showmatch "shows matching brackets
set lcs=tab:\ \ ,trail:.,extends:$,precedes:$ "Replace special chars with visible chars(tabs=>>, etc.)
set list

function RemoveTrailingSpaces()
   : %s/\s*$//
   : ''
endfunction

" au FileChangedRO * call MakeWritable()
autocmd FileWritePre   * :call RemoveTrailingSpaces()
autocmd FileAppendPre  * :call RemoveTrailingSpaces()
autocmd FilterWritePre * :call RemoveTrailingSpaces()
autocmd BufWritePre    * :call RemoveTrailingSpaces()

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

syntax on
colorscheme jellybeans

set backspace=indent,eol,start

filetype plugin indent on
let OmniCpp_MayCompleteDot = 0
let OmniCpp_MayCompleteArrow = 0

map <C-a> :A<CR>
map <Up> k
map <Down> j
map <Left> h
map <Right> l
map <C-z> :noh<CR>
map <C-l> :BufExplorer<CR>
map <C-Tab> :bn<CR>
map <C-S-Tab> :bp<CR>

 "Make Ctrl + Up move current line up
imap <A-Up> dd-P
"Make Ctrl + Down move current line down
imap <A-Down> ddp

amenu icon=a ToolBar.Open\ Corresponding :NERDTreeToggle<CR>

function GuiTabLabel()
  let label = ''
  let bufnrlist = tabpagebuflist(v:lnum)

  " Add '+' if one of the buffers in the tab page is modified
  for bufnr in bufnrlist
    if getbufvar(bufnr, "&modified")
      let label = '+'
      break
    endif
  endfor

  " Append the number of windows in the tab page if more than one
  let wincount = tabpagewinnr(v:lnum, '$')
  if wincount > 1
    let label .= wincount
  endif
  if label != ''
    let label .= ' '
  endif

  " Append the buffer name
  return label . expand('%:t')
endfunction

set guitablabel=%{GuiTabLabel()}

" Highlighting of current line
autocmd GUIEnter,InsertLeave *
         \ highlight CursorLine term=none cterm=none gui=none ctermbg=3 guibg=Black

autocmd InsertEnter *
         \ highlight CursorLine term=none cterm=none gui=none ctermbg=5 guibg=#220000
set cursorline                     " Highlight the line that the cursor is on

let g:bufExplorerSplitBelow=0
let g:bufExplorerSortBy='name'       " Sort by the buffer's name.
let g:alternateExtensions_{'m'} = "h"
let g:alternateExtensions_{'mm'} = "h"
let g:alternateExtensions_h = "m,mmc,cpp,cxx,cc,CC"

autocmd FileType actionscript set omnifunc=actionscriptcomplete#CompleteAS
autocmd FileType actionscript :set dictionary=$HOME/.vim/dict/actionscript.dict
autocmd BufEnter *.as set filetype=actionscript

let NERDTreeChDirMode=2

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

au VimEnter * NERDTree
au VimEnter * Tlist
