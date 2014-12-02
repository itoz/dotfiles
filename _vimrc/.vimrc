set nocompatible
filetype off

set rtp+=~/dotfiles/.vim/vundle.git/        "vundleのディレクトリ
call vundle#rc()
Plugin 'gmarik/Vundle.vim'
Bundle 'Shougo/neocomplcache'
filetype plugin indent on     " required!
