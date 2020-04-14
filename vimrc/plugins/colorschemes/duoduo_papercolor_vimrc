" Colorscheme

Plug 'NLKNguyen/papercolor-theme'
Plug 'Yggdroot/duoduo'

set guifont=Liberation\ Mono\ for\ Powerline\ Bold

syntax enable
if $BACKGROUND == 'light' || has("gui_running")
  " Do PaperColor
  set background=light
  let g:colors_name = "PaperColor"
  " Vim-airline theme
  let g:airline_theme='papercolor'
  " Search color
  highlight Search cterm=bold ctermbg=6 ctermfg=White
  " Highlight trailing spaces
  highlight ExtraWhitespace cterm=bold  ctermfg=250  ctermbg=none     
  highlight SpecialKey cterm=bold  ctermfg=250  ctermbg=none
elseif $BACKGROUND == 'dark'
  " Do duoduo
  set background=dark
  let g:colors_name = "duoduo"
  " Visual highlight color
  highlight Visual cterm=bold ctermbg=19 ctermfg=White
  " Highlight trailing spaces
  highlight ExtraWhitespace cterm=bold  ctermfg=240  ctermbg=none
  highlight SpecialKey cterm=bold  ctermfg=240  ctermbg=none
  " Pretty Diff
  highlight DiffAdd    cterm=bold  ctermfg=255  ctermbg=22    guifg=#003300  guibg=#DDFFDD  gui=none
  highlight DiffChange cterm=bold  ctermfg=255  ctermbg=245   guibg=#ececec  gui=none
  highlight DiffText   cterm=bold  ctermfg=255  ctermbg=6     guifg=#000033  guibg=#DDDDFF  gui=none
  highlight DiffDelete cterm=bold  ctermfg=255  ctermbg=88    guifg=#DDCCCC  guibg=#FFDDDD  gui=none
endif

" Highlight Special keys
match ExtraWhitespace /\s\+$/
