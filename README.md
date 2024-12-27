# Dotfiles

## Installations

```
git clone https://github.com/hassansari4a/dotfiles.git .dotfiles

## Install mise
curl https://mise.run | sh

## Install nvim
brew install neovim
brew install ripgrep

## Install tmux, tpm
brew install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

```

## Link

```
ln -s .dotfiles/zsh/.zlogin .zlogin
ln -s .dotfiles/zsh/.zlogin .zlogout
ln -s .dotfiles/zsh/.zprofile .zprofile
ln -s .dotfiles/zsh/.zshenv .zshenv
ln -s .dotfiles/zsh/.zshrc .zshrc


ln -s .dotfiles/nvim/ .config/nvim
ln -s .dotfiles/.tmux.conf .tmux.conf
```
