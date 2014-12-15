#dotfiles

 - cd
 - git clone https://github.com/itoz/dotfiles.git

##vim
 - ln -sF ~/dotfiles/_vimfiles ~/.vim
 - ln -sF ~/dotfiles/_gvimrc/.gvimrc ~/.gvimrc
 - ln -sF ~/dotfiles/_vimrc/.gimrc ~/.vimrc

vim
:NeoBundleInstall

##git

 - ln -sF ~/dotfiles/_gitfiles/.gitignore_global ~/.gitignore_global
 - ln -sF ~/dotfiles/_gitfiles/.gitconfig ~/.gitconfig

