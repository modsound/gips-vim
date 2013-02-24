" *********************************************************************
" PluginName: Gips-vim
" Maintener: mittan(E-mail => modsound@gmail.com, Twitter => @modsound)
" License: MIT
" *********************************************************************
" todo
" 一定時間操作していない場合にsayする
" shaberu.vimと連携する
" $LANGがjaの場合とenの場合で読み込むtxtを変える
" ハッシュ読み込みでQ&A式の表示ができるようにする
" *********************************************************************

" not reload
if exists("g:loaded_gips")
  finish
endif
let g:loaded_gips = 1

" keymap
nnoremap <Up>    :call gips#Gips()<CR>
nnoremap <Down>  :call gips#Gips()<CR>
nnoremap <Left>  :call gips#Gips()<CR>
nnoremap <Right> :call gips#Gips()<CR>
