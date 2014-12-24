" Note: Skip initialization for vim-tiny or vim-small.
" https://github.com/Shougo/neobundle.vim

let g:hybrid_use_iTerm_colors = 1
colorscheme hybrid
syntax on

" 行番号を表示
set number

"--------------------------
" Start Neobundle Settings.
"---------------------------
" bundleで管理するディレクトリを指定

set runtimepath+=~/.vim/bundle/neobundle.vim/

 
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

" カッコで囲む
NeoBundle 'surround.vim'
NeoBundle 'w0ng/vim-hybrid'
" ファイルをtree表示してくれる :NEADTree
NeoBundle 'scrooloose/nerdtree'


call neobundle#end()

"---------------------------------------------------
" Required:
"---------------------------------------------------
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.

NeoBundleCheck
