let num = 255
while num >= 0
    exec 'hi col_'.num.' ctermbg='.num.' ctermfg=white'
    exec 'syn match col_'.num.' "ctermbg='.num.':...." containedIn=ALL'
    call append(0, 'ctermbg='.num.':....')
    let num = num - 1
endwhile


" #!/bin/bash
" for i in {0..255} ; do
"   printf "\x1b[38;5;${i}mcolour${i} \n"
" done
