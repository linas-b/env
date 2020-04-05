#/bin/sh

cp -r ~/.config/i3/* ./roles/i3/files/i3

cp -r ~/.config/nvim/colors/* ./roles/nvim/files/nvim/colors
cp ~/.config/nvim/.ctags ./roles/nvim/files/nvim
cp ~/.config/nvim/init.vim ./roles/nvim/files/nvim

cp ~/.zshrc ./roles/oh-my-zsh/files

cp -r ~/.oh-my-zsh/custom/themes/* ./roles/oh-my-zsh/files/themes
