setlocal foldmethod=expr
setlocal foldexpr=GetTargetFold(v:lnum)

" Start a new fold at every comment containing `***`. The fold ends just before
" the start of the next fold, or before the end of the containing function
" (whichever comes first).
function! GetTargetFold(lnum)
  if getline(a:lnum) =~# '\V***'
    return '>1'  " Start of section.
  elseif getline(a:lnum+1) =~# '\V\(***\|\^}\)'
    return '<1'  " End of section.
  else
    return '-1'  " Infer from context.
  endif
endfunction
