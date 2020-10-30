# dotfiles
This is based off work by Nick Janetakis, reference his [dotfiles repo](https://github.com/nickjj/dotfiles).

## Getting Started

### .profile

#### CDPATH
Update the logic to point to your personal working directories.

### Ubuntu 20.04

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

### All OS's

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

## FAQ

### How to fix Vim taking a long time to open when inside of WSL?

It primarily comes down to either VcXsrv not running or a firewall tool
blocking access to VcXsrv and it takes a bit of time for the connection to time
out.

You can verify this by starting Vim with `vim -X` instead of `vim`. This
will prevent Vim from connecting to an X server. This also means clipboard
sharing to your system clipboard won't work, but it's good for a test.

Vim will try to connect to that X server by default because `DISPLAY` is
exported in the `.bashrc` file. Installing and configuring VcXsrv as per these
dotfiles will fix that issue.

If the connection is still blocking, and an inbound and outbound firewall rule
for WSL2.

```powershell
# Administrator
New-NetFirewallRule -DisplayName "WSL" -Direction Inbound -InterfaceAlias "vEthernet (WSL)" -Action Allow
New-NetFirewallRule -DisplayName "WSL" -Direction Outbound -InterfaceAlias "vEthernet (WSL)" -Action Allow
```