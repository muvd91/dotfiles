
set nocompatible
filetype plugin on
syntax on

let s:my_wikis =
\['~/Documents/VimWiki/MyWiki.wiki',
\ '~/Documents/VimWiki/Oracle.wiki']

" VimWiki stuff
let g:vimwiki_list = []

for path in s:my_wikis
  let e_path = expand(path)
  if finddir(e_path, ".") == e_path
    call add(g:vimwiki_list, {'path': e_path})
  endif
endfor

