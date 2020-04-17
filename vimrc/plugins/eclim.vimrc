
Plugin 'dansomething/vim-eclim'

" Eclim
let g:EclimJavaOutlineDefaultAction = 'vsplit'
let g:EclimCompletionMethod = 'omnifunc'
nnoremap <leader>jj :Java<CR>
nnoremap <leader>jd :JavaDocComment<CR>
nnoremap <leader>ji :JavaImportOrganize<CR>
nnoremap <leader>js :JavaSearch<CR>
nnoremap <leader>je :ProjectProblems!<CR>
nnoremap <leader>jw :ProjectProblems<CR>
nnoremap <leader>jgt :JavaGet<CR>
nnoremap <leader>jst :JavaSet<CR>
nnoremap <leader>jim :JavaImpl<CR>
nnoremap <leader>jot :JavaOutline<CR>

" Eclim Supertab
let g:SuperTabDefaultCompletionType = 'context'
