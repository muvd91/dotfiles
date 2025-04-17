
" Vim will generally autodetect filetypes automatically. In most cases this
" works as expected, however, in some cases it will detect a file with the `tex`
" suffix as a |plaintex|. To prevent this, one may set the option
" |g:tex_flavor| in ones `vimrc` file, that is: >
let g:tex_flavor = 'latex'
let g:vimtex_view_method = 'zathura'

set conceallevel=1
set textwidth=85

highlight ExtraWhitespace guifg=#6a768a
highlight Conceal guifg=#bcd4e6
match ExtraWhitespace /\s\+$/

