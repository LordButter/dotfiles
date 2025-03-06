# To Install
sudo apt-get update && sudo apt-get full-upgrade -y && sudo apt-get autoremove -y
sudo apt-get install zip unzip wget curl git stow zsh make ripgrep neofetch fzf -y
cd ~
git clone https://github.com/LordButter/dotfiles.git
## tmux
sudo apt-get install tmux
cd dotfiles
stow tmux
cd ..
## go
wget https://go.dev/dl/go1.24.1.linux-amd64.tar.gz
tar -C ~/go -xzf go1.24.1.linux-amd64.tar.gz
## nvim
git clone https://github.com/neovim/neovim --branch=stable
cd neovim
make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/neovim"
make install
## lazygit
mkdir lazygit
cd lazygit
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | \grep -Po '"tag_name": *"v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/download/v${LAZYGIT_VERSION}/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
rm lazygit.tar.gz
cd ..
## nvm
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
## mysql server und client
sudo apt-get install mysql-server
mysql_secure_installation
## symfony
## composer 
## php8.2 (nach shopware dependencies) + php_debug
## pyenv
## zsh
sudo apt-get install zsh -y
## oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
rm .zshrc
cd dotfiles
stow zsh
cd ..
source ~/.zshrc
## font
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/DroidSansMono.zip
mkdir -p ~/.local/share/fonts
unzip DroidSansMono.zip -d ~/.local/share/fonts
fc-cache -fv
rm DroidSansMono.zip
