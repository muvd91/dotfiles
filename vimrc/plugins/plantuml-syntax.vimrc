Plug 'aklt/plantuml-syntax'

function PlantUml()
    let img = expand('%:r') . ".png"
    let cmd = 'Start! plantuml % && eog ' . img
    exec cmd
endfunction
