syntax on
colorscheme jellybeans
autocmd GUIEnter,InsertLeave *
         \ highlight CursorLine term=none cterm=none gui=none ctermbg=3 guibg=Black

autocmd InsertEnter *
         \ highlight CursorLine term=none cterm=none gui=none ctermbg=5 guibg=#220000
