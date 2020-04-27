
" Plugg implementation
command -nargs=+ Plugg :call HandlePlugg(<args>)
autocmd User PlugFinished execute LoadConfigs()

let s:config_path = "~/data/dotfiles/vimrc/plugins/"
let g:config_files = []

function HandlePlugg(repo, ...)
  if a:0 == 0
    " echom "Plugin " . a:repo . " found."
    Plug a:repo
    return
  endif

  let options = a:1
  let config = options['config']
  " echom "Plugin " . a:repo . " found with config file " . config

  call add(g:config_files, config)
  Plug a:repo, options

endfunction

function LoadConfigs()
  for config in g:config_files
    " echom "Loading config file " . config
    execute "source " . s:config_path . config
  endfor
endfunction

