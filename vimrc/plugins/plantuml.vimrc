let s:plantuml_exec = "~/bin/plantuml.jar"
let s:plantuml_opts = "-Sdpi=300"

let s:plantuml_cmd = ['java', '-jar', expand(s:plantuml_exec), s:plantuml_opts, expand('%:p')]

function CompileShow()
    let job = job_start(s:plantuml_cmd, {'close_cb': 'ShowDiagram'})
    let jobinfo = job_info(job)
endfunction

function CompileUML()
    let job = job_start(s:plantuml_cmd)
    let jobinfo = job_info(job)
endfunction

function ShowDiagram(channel)
    let img = expand('%:r') . ".png"
    let job = job_start(["eog", img])
endfunction

autocmd BufWritePost * call CompileUML()

nnoremap \ll :call CompileShow()<CR>

