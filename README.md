# Gips.vim

We are taught not to use arrow keys by Vim master to move back fingers to their home position quickly.  
This plugin helps that as it assigns another function to arrow keys. If you press arrow keys, Vim displays random messages on statusline.

## Install
```
NeoBundle 'modsound/gips-vim.git'
```

## Configuration

* You can change messages from Vim, If you save a text file in 'dict' directory(in plugin directory) and set its filepath by global variable in your vimirc.

```
let g:gips_reading_txt = '~/.vim/bundle/gips-vim/autoload/dict/***.txt'
```

* Vim can read out the text, If you install Shaberu.vim and set the following parameter in your vimrc.

```
let g:gips_speech_via_shaberu = 1
```

##THANKS!!
I conceived the idea of this plugin at yokohama.vim. @thinca's advice made my script fit for practical use.  
The random numbers code depends on @osyo-manga.
