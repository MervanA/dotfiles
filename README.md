# dotfiles

download (clone) repo to your home folder

```
git clone --bare https://github.com/MervanA/dotfiles.git $HOME/.dotfiles.git
source ~/.bashrc
echo ".dotfiles.git" >> .gitignore
dotfiles checkout
dotfiles config --local status.showUntrackedFiles no
```