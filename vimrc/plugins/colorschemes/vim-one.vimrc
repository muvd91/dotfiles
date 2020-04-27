" Colorscheme vim-one

let g:airline_theme='one'
let g:colors_name='one'
let g:one_allow_italics = 1

if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
  set termguicolors
endif

if $BACKGROUND == 'light' || has("gui_running")
  set background=light
elseif $BACKGROUND == 'dark'
  set background=dark
endif



