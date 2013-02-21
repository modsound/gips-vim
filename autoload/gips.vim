let s:save_cpo = &cpo
set cpo&vim

" import .txt as Array
if !exists('g:gips_reading_txt')
    " 相対パスで指定したいけどエラーが出る
    let g:gips_reading_txt = '$HOME/.vim/bundle/gips-vim/autoload/dict/tsundere.txt'
endif

" if NOT readable, alert
if filereadable(expand(g:gips_reading_txt))
    let s:message = readfile(expand(g:gips_reading_txt))
  else
    echo "テキストファイルが読み込めないわ..."
    finish
endif

set noshowmode
" random numbers function
function! gips#s:srand(seed)
    let self = {}
    let self.seed = a:seed
    function self.apply()
        let self.seed = self.seed * 214013 + 2531011
        return (self.seed < 0 ? self.seed - 0x80000000 : self.seed) / 0x10000 % 0x8000
    endfunction
    return self
endfunction

function! gips#s:discrete_distribution(list)
    let self = {}
    let self.list = a:list
    function! self.apply(engine)
        let num = a:engine.apply()
        return self.list[ num % len(self.list) ]
    endfunction
    return self
endfunction

let s:engine = gips#s:srand(localtime())
function! gips#Gips()
    " import Array
    let list = s:message
    let list_dist = gips#s:discrete_distribution(list)
    let scenario = list_dist.apply(s:engine)
    " output your text on statusline at random
    echo scenario
endfunction

let&cpo = s:save_cpo
