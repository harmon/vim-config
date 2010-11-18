syn match   cppExtra "::"
syn match   cppExtra "<"
syn match   cppExtra ">"
syn match   cppExtra "&"
syn match   cppExtra "+"
syn match   cppExtra "="
syn match   cppExtra "("
syn match   cppExtra ")"
syn match   cppExtra "\."

" Default highlighting
if version >= 508 || !exists("did_cpp_extra_inits")
  if version < 508
    let did_cpp_extra_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
  HiLink cppExtra       SpecialKey
  delcommand HiLink
endif
