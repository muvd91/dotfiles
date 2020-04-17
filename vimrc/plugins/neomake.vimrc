let g:neomake_python_pylint_maker = {
      \ 'exe': 'pylint',
      \ 'args': ['-E'],
      \ }
augroup my_neomake
  au!
  autocmd FileType rust,python call neomake#configure#automake_for_buffer('nw', 1000)
augroup END

let g:neomake_warning_sign = {
      \   'text': '>>',
      \   'texthl': 'NeomakeWarningSign',
      \ }

let g:neomake_error_sign = {
      \   'text': '>>',
      \   'texthl': 'NeomakeErrorSign',
      \ }

highlight NeomakeErrorSign cterm=bold ctermbg=225 ctermfg=124 gui=none
highlight NeomakeWarningSign cterm=bold ctermbg=189 ctermfg=21 gui=none
