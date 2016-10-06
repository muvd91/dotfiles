" Functions

set makeprg=\./gradlew\ clean\ build

function JavaRun()
  let s:current_file = expand('%:r')
  let s:strip = substitute(s:current_file, "src/main/java/", "","")
  let s:result = substitute(s:strip, "/", ".","")
  " let s:termbuf = term_start("java -cp build/classes/java/main " . s:result)
  below call term_start("java -cp build/classes/java/main " . s:result, {'term_rows':20})
endfunction

function! NoTempOldFiles()
    call filter(v:oldfiles, 'v:val !~ "/tmp/"')
    browse :oldfiles
endfunction

function LightBulb()
    if &background == "light"
        let &background = "dark"
    else
        let &background = "light"
    endif
endfunction

function IndentBy(num)
    let &tabstop=a:num
    let &shiftwidth=a:num
endfunction

function Terminal()
    :below terminal ++rows=20
endfunction

function JsonFormat()
  :%!python -m json.tool
endfunction

function! CopyMatches(reg)
  let hits = []
  %s//\=len(add(hits, submatch(0))) ? submatch(0) : ''/gne
  let reg = empty(a:reg) ? '+' : a:reg
  execute 'let @'.reg.' = join(hits, "\n") . "\n"'
endfunction
command! -register CopyMatches call CopyMatches(<q-reg>)

