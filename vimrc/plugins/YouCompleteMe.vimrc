
" To add a new completer to YCM installation, re-run install.py.
" to avoid recompiling YCM, use --skip-build and --no-regex.

" YCM disable confirm ycm_extra_conf
let g:ycm_confirm_extra_conf=0
let g:ycm_key_list_stop_completion = ['<C-y>']
let g:ycm_key_list_select_completion = ['<Down>', '<C-j>']
let g:ycm_key_list_previous_completion = ['<Up>', '<C-k>']

" YCM jdt lombok path
" let $JAVA_TOOL_OPTIONS='-javaagent:' . $LOMBOK_PATH . ' -Xbootclasspath/p:' . $LOMBOK_PATH

let s:lsp = '~/.vim/lsp-examples'
let g:ycm_language_server = [
  \   {
  \     'name': 'bash',
  \     'cmdline': [ 'node', expand( s:lsp . '/bash/node_modules/.bin/bash-language-server' ), 'start' ],
  \     'filetypes': [ 'sh', 'bash' ],
  \   },
  \   { 'name': 'kotlin',
  \     'filetypes': [ 'kotlin' ],
  \     'cmdline': [ expand( s:lsp . '/kotlin/server/build/install/server/bin/server' ) ],
  \   },
  \   { 'name': 'vim',
  \     'filetypes': [ 'vim' ],
  \     'cmdline': [ expand( s:lsp . '/viml/node_modules/.bin/vim-language-server' ), '--stdio' ]
  \   }
  \ ]
