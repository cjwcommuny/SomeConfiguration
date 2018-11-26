PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

#install oh-my-zsh
sudo apt install zsh
chsh -s /bin/zsh # 将 Zsh 设置为默认 Shell

configFilePath="."

# adjust workspace
cd configFilePath || (>&2 echo "[ERROR] Wrong configFilePath")

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cp .zshrc ~
source ~/.zshrc

#install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#install app from homebrew
brew bundle

#vim setup
cp .vimrc ~
source ~/.zshrc

