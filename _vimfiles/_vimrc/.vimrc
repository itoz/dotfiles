" Note: Skip initialization for vim-tiny or vim-small.
" https://github.com/Shougo/neobundle.vim
"
"
let g:hybrid_use_iTerm_colors = 1
colorscheme hybrid
syntax on

if !1 | finish | endif

 if has('vim_starting')
   set nocompatible               " Be iMproved

   " Required:
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 
endif
 
"---------------------------------------------------
" Required:
"---------------------------------------------------
call neobundle#begin(expand('~/.vim/bundle/'))

"---------------------------------------------------
 " Let NeoBundle manage NeoBundle
 " Required:
"---------------------------------------------------
 NeoBundleFetch 'Shougo/neobundle.vim'

"---------------------------------------------------
 " My Bundles here:
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!
"---------------------------------------------------
NeoBundle 'tpope/vim-surround'
NeoBundle 'w0ng/vim-hybrid'


 call neobundle#end()

"---------------------------------------------------
 " Required:
"---------------------------------------------------
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck
