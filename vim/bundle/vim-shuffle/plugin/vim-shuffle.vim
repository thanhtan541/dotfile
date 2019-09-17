function! StringShuffle(str)
    let str = a:str
    let list = split(str, ',')
    echom join(reverse(list), ',')
endfunction
