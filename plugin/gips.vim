" *********************************************************************
" PluginName: Gips-vim
" Maintener: mittan(E-mail => modsound@gmail.com, Twitter => @modsound)
" License: MIT
" *********************************************************************
" todo
" 手動実行と自動実行とで読み込むテキストを変える
" speechの読み上げは連続ではできないようにする
" 初回のみechoがステータスラインに表示されない
" $LANGがjaの場合とenの場合で読み込むtxtを変える
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
inoremap <Up>    <Esc>:call gips#Gips()<CR>
inoremap <Down>  <Esc>:call gips#Gips()<CR>
inoremap <Left>  <Esc>:call gips#Gips()<CR>
inoremap <Right> <Esc>:call gips#Gips()<CR>
