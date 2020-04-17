Plug 'ctrlpvim/ctrlp.vim'

" Ctrl-P - Ignore list. (Does not apply if ag is used)
let g:ctrlp_custom_ignore = 'git|lib'
let g:ctrlp_working_path_mode = 0

" Ctrl-P - Open buffer list.
nnoremap <leader>l :CtrlPBuffer<CR>

" Ctrl-P - Open Tag list
nnoremap <leader>. :CtrlPTag<cr>

" Ctrl-P - Use The Silver Searcher
if executable('ag')

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif
