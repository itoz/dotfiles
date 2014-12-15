#dotfiles

 - cd
 - git clone https://github.com/itoz/dotfiles.git

##vim
 - ln -sF ~/dotfiles/_vimfiles ~/.vim
 - ln -sF ~/dotfiles/_vimfiles/_gvimrc/.gvimrc ~/.gvimrc
 - ln -sF ~/dotfiles/_vimfiles/_vimrc/.vimrc ~/.vimrc

###neobundle自体をインストールしていない場合
 - git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
### bundleインストール
 - vim
 - :NeoBundleInstall

##git

 - ln -sF ~/dotfiles/_gitfiles/.gitignore_global ~/.gitignore_global
 - ln -sF ~/dotfiles/_gitfiles/.gitconfig ~/.gitconfig

