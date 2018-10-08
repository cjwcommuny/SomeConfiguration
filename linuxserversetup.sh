#this is shell script for ubuntu server setup
#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

#install oh-my-zsh
sudo apt install zsh
chsh -s /bin/zsh # 将 Zsh 设置为默认 Shell
