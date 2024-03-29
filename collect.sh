#/bin/sh

recursive_copy()
{
  FROM=$1
  TO=$2
  echo "Creating dir: $TO and copying content from: $FROM"
  mkdir -p $TO && cp -r $FROM $TO
}

recursive_copy "$HOME/.config/i3/*" "./roles/i3/files/i3"

recursive_copy "$HOME/.config/nvim/colors/*" "./roles/nvim/files/nvim/colors"
recursive_copy "$HOME/.config/nvim/config/*" "./roles/nvim/files/nvim/config"
recursive_copy "$HOME/.config/nvim/lua/*" "./roles/nvim/files/nvim/lua"
cp ~/.config/nvim/.ctags ./roles/nvim/files/nvim
cp ~/.config/nvim/init* ./roles/nvim/files/nvim
cp ~/.config/nvim/plugins_archive.txt ./roles/nvim/files/nvim
cp ~/.config/nvim/coc-settings.json ./roles/nvim/files/nvim

recursive_copy "$HOME/.oh-my-zsh/custom/themes/*" "./roles/oh-my-zsh/files/themes"
cp ~/.zshrc ./roles/oh-my-zsh/files
