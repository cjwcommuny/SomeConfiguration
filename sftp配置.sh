#本部分似乎不是最优方案，无法限制sftp用户访问其他目录

#安装相关软件

#新建用户usr 用户组sftpusers
sudo groupadd sftpusers
sudo useradd -s /bin/false -G sftpusers user
sudo usermod -a -G sftpusers ubuntu #将已有用户假如sftp组使得他能访问

#设置用户密码
sudo passwd user

#修改ssh权限
sudo vim /etc/ssh/sshd_config
#增改：
#Subsystem sftp /usr/lib/openssh/sftp-server
Subsystem sftp internal-sftp
# 匹配用户组，如果要匹配多个组，多个组之间用逗号分割
Match Group sftpusers
# 指定登陆用户到自己的用户目录
ChrootDirectory /home/ubuntu/share #指定目录
# 指定 sftp 命令
ForceCommand internal-sftp
# 这两行，如果不希望该用户能使用端口转发的话就加上，否则删掉
X11Forwarding no
AllowTcpForwarding no


sudo chown -R ubuntu:sftpusers /home/ubuntu/share
sudo chmod -R 755 /home/ubuntu/share #sftpsusers用户组能rwx

service sshd start

#利用yummy ftp pro可以进行文件夹同步