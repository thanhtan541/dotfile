function! StringShuffle(str)
    " assign value
    let str = a:str
    " split into list
    let list = split(str, ',')
    " reverse list
    echom join(reverse(list), ',')
    " store into register
    " paste into current selection
endfunction

function! StringBreak2Line(str)
    " assign value
    let str = a:str
    " split into list
    let list = split(str, ',')
    " add new line to each element
    " store into register
    " paste into current selection
endfunction

