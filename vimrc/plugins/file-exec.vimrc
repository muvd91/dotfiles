
" Executes according to filetype showing results in tmux pane

function FileExecTerm(command)
  write
  let l:src = expand('%:p')
  if exists("s:termbuf")
    execute "bdelete" s:termbuf
  endif
  below let s:termbuf = term_start(a:command . ' ' . l:src)
endfunction

function KotlinScript()
  let g:syntastic_kotlin_checkers = ['kotlinc']
  let g:syntastic_kotlin_kotlinc_args = "-script"
  nnoremap <C-\> :call FileExecTerm("kotlinc -script")<CR>
endfunction

function PythonScript()
  nnoremap <C-\> :call FileExecTerm("python")<CR>
endfunction

autocmd FileType kotlin call KotlinScript()
autocmd FileType python call PythonScript()
