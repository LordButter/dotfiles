# To Install
sudo apt-get update && sudo apt-get full-upgrade -y && sudo apt-get autoremove -y
sudo apt-get install zip unzip wget curl git stow make ripgrep neofetch fzf -y
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
## php8.2 (nach shopware dependencies) + php_debug
sudo apt -y install lsb-release gnupg2 ca-certificates apt-transport-https software-properties-common
sudo add-apt-repository ppa:ondrej/php
sudo apt-get -y install php8.2
sudo apt-get install php8.2-cli php8.2-common php8.2-curl php8.2-fpm php8.2-gd php8.2-intl php8.2-mbstring php8.2-mysql php8.2-opcache php8.2-readline php8.2-xdebug php8.2-xml php8.2-zip php8.2 -y 

Set /etc/php/8.2/cli/conf.d/20-xdebug.ini to:
```
zend_extension=xdebug.so

xdebug.mode=debug,develop
;xdebug.start_with_request=1
xdebug.discover_client_host=0
xdebug.client_port=5902
debug.client_host=127.0.0.1
xdebug.log=/tmp/xdebug.log
```

## composer 
mkdir composer
cd composer
curl -sS https://getcomposer.org/installer -o /tmp/composer-setup.php
HASH=`curl -sS https://composer.github.io/installer.sig`
php -r "if (hash_file('SHA384', '/tmp/composer-setup.php') === '$HASH') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer
## symfony
curl -1sLf 'https://dl.cloudsmith.io/public/symfony/stable/setup.deb.sh' | sudo -E bash
sudo apt install symfony-cli
## pyenv
curl https://pyenv.run | bash
pyenv update
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
## after
nvm install 20.16.0 
nvm install 16.17.1
nvm alias default 20.16.0
