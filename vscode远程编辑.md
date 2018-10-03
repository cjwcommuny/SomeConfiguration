# vscode远程调试

1. 远程安装 rmate

   ```shell
   wget https://raw.githubusercontent.com/sclukey/rmate-python/master/bin/rmate
   chmod +x ./rmate
   mv ./rmate /usr/local/bin/rmate
   ```
2. 本地安装 openssh
3. vscode 安装 remote vscode 扩展
4. 配置扩展：
	```
	"remoteonstartup": true
   ```
5. vscode 执行`start server`命令
6. 在vscode终端中运行
	```shell
	ssh -R 52698:localhost:52698 -p22 account@remote_ip
	```
7. 打开 a.txt
	```shell
	rmate a.txt
	```