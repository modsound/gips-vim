" not reload
if exists("g:loaded_gips")
  finish
endif
let g:loaded_gips = 1
" ----------------------------------
" todo
" 一定時間操作していない場合にsayする
" shaberu.vimと連携する
" ----------------------------------

" keymap
nnoremap <Up>    :call gips#Gips()<CR>
nnoremap <Down>  :call gips#Gips()<CR>
nnoremap <Left>  :call gips#Gips()<CR>
nnoremap <Right> :call gips#Gips()<CR>
