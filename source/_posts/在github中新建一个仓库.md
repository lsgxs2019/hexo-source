---
title: 在github中新建一个仓库
date: 2022-07-14 06:44:15
tags: 
  - 删除仓库
  - 空的仓库
  - 仓库
  - git push 
categories: github 
---

#### 在github中新建一个仓库（空仓）

* 如何创建一个空的仓库
  ![img](/images/new-repository.png)
  <!--more-->
   ![img](/images/create-new-repository.png)

在仓库的基本信息区只输入username.github.io即可，选择不添加readme.md文件，确认后就建立一个空的仓库，完成之后，系统显示如何使用git 命令来快速设置和这个仓库关联。

> 从上图可以看出，共有四种方法操作新建的这个空仓库
>
> * 可以在github上新建文件或者上传文件，但还是通过下面两种方法通过实现git与github通讯更方便
>
> * create a new repository on the command line(这种方法实际上就是在本地新建一个目，添加文件，纳入.git管理，然后再关联github仓库)
>
> * push an existing repository from the command line（这个是已经纳入.git管理的本地目录，直接建立链接推送的指定的github仓库）
>
> * import code from aother repository



![img](/images/github-quick-setup.png)

…or create a new repository on the command line

~~~ create a new repository on the command line
echo "# lsgxs.github.io" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/username/username.github.io.git
git push -u origin main
本地新建立的目录、关联一个新建的空的仓库的方法
经过测试，这个写法也可以实现同样的效果： git push orign   master:main 这的master是因为git版本的问题，新建的分支默认为master，可以使用git branch -M mian 把当前分支改名为main 。如果不想修改的话，写好本地分支链接远程分支的两个参数也可以，比如：git push origin master:main ,这样的写法甚至连-u参数也不用带同样可以正确推送，但是加上git push 加上-u参数可以一次那个设置好上游链接的分支，以后再使用git push就不用指定了。
也就是说，git push中，通过origin指定了目标仓库，通过source:main指定本地分支链接和远程分支的链接关系，就可以完整推送到远程的仓库分支。
~~~

…or push an existing repository from the command line


~~~push an existing repository from the command line

git remote add origin https://github.com/username/username.github.io.git
git branch -M main
git push -u origin main
把现有的本地项目推送到新建的空的仓库的方法
~~~

#### 如何删除一个仓库
* * 登录github之后打开这个仓库，点击这个仓库的settings

  ![img](/images/repository-settings.png)

  <!--more-->

* 在窗口的最下部区域选择删除这个仓库

  ![img](/images/delete-repository.png)

根据系统提示确认之后就可以删除这个仓库的所有内容

#### 操作一个已经包含项目文件的github仓库

git clone到本地就可以

