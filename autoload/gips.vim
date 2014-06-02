let s:save_cpo = &cpo
set cpo&vim

" import text file as Array
if !exists('g:gips_reading_txt')
    let g:gips_reading_txt = expand('<sfile>:p:h') . '/dict/tsundere.txt'
endif
let s:message = map(readfile(expand(g:gips_reading_txt)), 'iconv(v:val, "utf-8", &encoding)')

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
    let s:says = list_dist.apply(s:engine)
    " output your text on statusline at random
    echo s:says
    " if loaded shaberu.vim and user's permission exists, vim gives a speech!
    if exists("g:loaded_shaberu") && exists("g:gips_speech_via_shaberu")
        call vimproc#system_bg("killall say")
        call shaberu#say(s:says)
    endif
endfunction

" Interference
set updatetime=60000
function! gips#interference()
    augroup limit
      autocmd!
      autocmd CursorHold,CursorHoldI * call gips#Gips()
    augroup END
endfunction

let&cpo = s:save_cpo
