#dotfiles

 - cd
 - git clone https://github.com/itoz/dotfiles.git

##git

 - ln -sF ~/dotfiles/_gitfiles/.gitignore_global ~/.gitignore_global
 - ln -sF ~/dotfiles/_gitfiles/.gitconfig ~/.gitconfig

##zsh
 - curl -L http://install.ohmyz.sh | sh
 - ln -sF ~/dotfiles/_zshfiles/.zshrc ~/.zshrc 
 - ln -sF ~/dotfiles/_zshfiles/.oh-my-zsh ~/.oh-my-zsh 

##vim
 - ln -sF ~/dotfiles/_vimfiles ~/.vim
 - ln -sF ~/dotfiles/_vimfiles/_gvimrc/.gvimrc ~/.gvimrc
 - ln -sF ~/dotfiles/_vimfiles/_vimrc/.vimrc ~/.vimrc

###※neobundle自体をインストールしていない場合
 - git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

###bundleインストール
 - vim
 - :NeoBundleInstall


##bash
 = ln -sF ~/dotfiles/_bashfiles/.bash_profile .~/.bash_profile
 


