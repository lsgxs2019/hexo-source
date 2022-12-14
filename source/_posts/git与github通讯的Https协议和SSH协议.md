---
title: 关于git与github通讯的Https协议和SSH协议
date: 2021-05-30
tag: 
    -SSH
    -Https 
categories: git
cover: /2021/05/30/关于git与github通讯的Https协议和SSH协议/git命令.jpg
---

## git与github通讯的Https协议和SSH协议

在安装Git后，需要使用git命令与github仓库通讯，一般由两种协议实现与git与github仓库的通讯

* ## https

  如果刚刚接触git和github，使用https协议与github通讯比较容易上手，顺利实现各种git命令的操作。一般复制仓库的本地的git命令如下

  ```bash
  git clone https://github.com/username.gitbub.io.git 
  git clone 命令是多个git命令的封装，相当在本地新建立的username.github.io目录，再执行git init 纳入.git管理,自动建立一个master分支（git checkout -b master），自动添加远程连接git remote add origin https://github.com/username.gitbub.io.git，再 git fetch下载数据
  ```

  **通过https协议和github通讯，认证方式一般有用户名+密码、github-token两种方式**。比较推荐token方式，比用户名+密码钥安全。那么怎么使用token方式通过验证呢？

  <!--more-->

  * 首先在github的settings-develpper ->personal access token下生成新的token,然后直接复制token内容，保存在文本文件。

  * 使用git clone https://github.com/username/repoistory-name.git 把项目下载到本地

  * 首次使用需要配置用户名和邮箱，配置完成后，会在windows用户目录下的.gitconfig文件中添加数据项，可以打开查看，.gitcofig是文本文件，可以用记事本直接打开查看或者编辑。

    * git config `--global` user.name "github-username"

    * git config `--global` user.email  "xxxx@126.com"

  * 在修改了本地的项目文件后，执行git commit -m "update"提交时会查询.gitconfig中的用户名和密封数据项，如果没有配置这两项信息，会提示没有认证信息，并给出操作建议，如下图：

    ![img](/images/github/git-first-commit.png)

  * 在 git push origin main 时，正常会弹出github认证对话框，复制粘贴前边生成的token，确定后就可以通过认证，git push 就可以把数据推送到github仓库。如果没有弹出github登录的认证对话框，我的做法时把.gitconfig里的邮箱和用户名数据删除，重新执行git  config `--global` user.name "username"和git config `--global` user.email "user.email",然后再git commit -m "update"、最后git push origin main就可以弹出github登录认证对话框，填写token，确定后就可以正常执行git push 。可以试试不加`--global`的配置方式。不弹出github认证对话框，可能是以内.gitconfig中已经有了用户名和邮箱，以前做过登录认证（具体原因不知道，自己猜的）。 

* ## SSH

  SSH的全称时Secure Shell,通过一对加密的密钥来实现客户端和服务器的通讯。在 Git Bash 命令行窗口下，使用以下命令来生成SSH密钥

  ```bash
  1.ssh-keygen  -t rsa  -C "username.com--这里是密钥的注释，一般使用邮箱可说明它的用途"
  这里的-t rsa 参数知名密钥类型为rsa，-C 为注释。也可以再加上-f filename来指定密钥的文件名称。
  在安装git之后，使用这个命令可在默认的路径下生成id_rsa.pub和id_rsa这两个公钥和私钥文件，一般要查询他的路劲，可在git bash 命令行下输入下面的命令：
  cd ~/.ssh
  ls -al 
  2.如果已经生成过密钥的话，就会显示这两个文件，在ssh-keygen命令中不带-f filename 参数的话，默认的文件名是id_rsa 和id_rsa.pub。
  3.在git bash命令窗口下使用clip < id_rsa.pub，可以把文件的内容复制到剪贴板上，登录到github，在网站的setting下打开SSH及GPG Keys选项，titile随便自己一个，把剪贴板的内容粘贴在ssh-key里，保存即可，以后使用git 操作github仓库时就可以使用git@github.com:username/username.github.io.git的格式了，这个据说时传输数据的效率比https更高一些。
  4.如果后来又重新生成了一对密钥文件，并且把公钥的内容添加在github上之后，就要把这对密钥对应的私钥覆盖到~/.ssh目录下，这个是安装git时默认的路径，如果想修改git 使用的密钥文件的话，就要修改环境变量，不想麻烦的话，就把新生成的密钥文件改名覆盖原来的密钥对文件即可。
  5. 可以使用git remote -v 来查询当前连接的与github.com的连接是使用https:// 协议还是git协议。例如：
  git clone https://github.com/username/username.github.io    //git remote -v  显示的是http协议连接github，git push origin也是。
  git clone git@github.com:username/username.github.io //git remote -v 显示的是git协议连接github，git push origin也是。
  总结一下： 
    1、生成密钥对
    2、在github上添加公钥
    3、使用 eval $(ssh-agent -s )
           ssh-add id_ed25519 
       向ssh代理注册私钥    
    4、 ssh -T git@github.com  测试链接       
  ```
  
  
  
  * 目前推荐使用 ssh-keygen -t ed25519  -C "xxxx@126.com"的 方法生成秘钥对。
  * 两种方法，推荐使用ssh协议和github通讯，也就是使用ed25519加密的秘钥对。使用https协议+token的方法，在git push时网络不稳定，而使用秘钥对方式效率很高，也许这只是自己的感受吧，暂时不知道具体的原理
  * ssh在github的两个常见使用场景：
    * git 与github通讯，把公钥保存在github上,settings->ssh,这个settings是用户的github账号级别
    * 把私钥保存在仓库的secret里，用来自动化发布的actions脚本里作为变量来引用，settings->secrets->actions，这个settings是仓库级别的。公钥保存在username.github.io的deploy kes。
    * 这两个场景可以只生成一对密钥就可以，也就是说一对密钥应用在两个场景。可以试试生成两队密钥文件，分别用到不同的场景里。

