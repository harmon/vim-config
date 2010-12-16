function RemoveTrailingSpaces()
   : %s/\s*$//
   : ''
endfunction

" au FileChangedRO * call MakeWritable()
autocmd FileWritePre   * :call RemoveTrailingSpaces()
autocmd FileAppendPre  * :call RemoveTrailingSpaces()
autocmd FilterWritePre * :call RemoveTrailingSpaces()
autocmd BufWritePre    * :call RemoveTrailingSpaces()
