# Gips.vim
__This plugin is only for Japanese at present.__

We vimmer, when moving cursor, is not allowed to use arrow keys. We should use hjkl keys.
This plugin restricts yourself to use arrow keys. If you use them, you are scolded by vim on status line.

## Install
```
Bundle 'modsound/gips-vim.git'
```

## Switch and Config
  Default what she says is TSUNDERE version. But other script file is saved in "gips-vim/autoload/dict" directory. You can change the contents by updating your .vimrc.  

For example...
```
let g:gips_reading_txt = '$HOME/.vim/bundle/gips-vim/autoload/dict/tsundere.txt'
```

And you can make vim into speaking(but on statusline now) as you like, if you set a variable where your text file separated by newlines is.

##THANKS!!
I conceived the idea of this plugin at yokohama.vim. @thinca's advice made my script fit for practical use.  
The random numbers code depends on @osyo-manga.
