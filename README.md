# Setup
sudo apt-get update && sudo apt-get full-upgrade -y && sudo apt-get autoremove -y
sudo apt-get install zip unzip wget curl git stow zsh ripgrep gdu fontconfig neofetch clang-11 cargo python3-venv -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
source ~/.zshrc
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/DroidSansMono.zip && mkdir -p ~/.local/share/fonts && unzip DroidSansMono.zip -d ~/.local/share/fonts && fc-cache -fv && rm DroidSansMono.zip
sudo snap install nvim --classic
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash && nvm install node
npm install -g tree-sitter-cli
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
rm lazygit lazygit.tar.gz
sudo snap install bottom
git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim
