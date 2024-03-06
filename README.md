# Dotfiles

## Installations

```
git clone https://github.com/hassansari4a/dotfiles.git .dotfiles

## Install Zprezto
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

## Install starship
curl -sS https://starship.rs/install.sh | sh

## Install mise
curl https://mise.run | sh
```

## Link

```
ln -s .dotfiles/zsh/zlogin .zlogin
ln -s .dotfiles/zsh/zlogin .zlogout
ln -s .dotfiles/zsh/zprofile .zprofile
ln -s .dotfiles/zsh/zshenv .zshenv
ln -s .dotfiles/zsh/zshrc .zshrc
```
