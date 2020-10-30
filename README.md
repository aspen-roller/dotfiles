# dotfiles
This is based off work by Nick Janetakis, reference his [dotfiles repo](https://github.com/nickjj/dotfiles).

# Getting Started

## Ubuntu 20.04

```bash
# Recommended applications
sudo apt-get update && sudo apt-get install -y \
  curl \
  git \
  gpg \
  htop \
  jq \
  pass \
  pwgen \
  python3-pip \
  ripgrep \
  rsync \
  shellcheck \
  tmux \
  unzip \
  vim-gtk
```

## All OS's

```bash
# clone the repo
git clone https://github.com/aspen-roller/dotfiles ~/dotfiles

# create symlinks to relevant files
mkdir -p ~/.local/bin \
  && ln -s ~/dotfiles/.aliases ~/.aliases \
  && ln -s ~/dotfiles/.bashrc ~/.bashrc \
  && ln -s ~/dotfiles/.gitconfig ~/.gitconfig \
  && ln -s ~/dotfiles/.profile ~/.profile \
  && ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf \
  && ln -s ~/dotfiles/.vimrc ~/.vimrc \
  && sudo ln -s ~/dotfiles/etc/wsl.conf /etc/wsl.conf
```