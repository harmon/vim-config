map <C-a> :A<CR>
map <Up> k
map <Down> j
map <Left> h
map <Right> l
map <C-x> :noh<CR>
map <C-l> :BufExplorer<CR>
map <C-Tab> :bn<CR>
map <C-S-Tab> :bp<CR>

nmap \] :NERDTreeFind<CR>

 "Make Ctrl + Up move current line up
imap <A-Up> dd-P
"Make Ctrl + Down move current line down
imap <A-Down> ddp
