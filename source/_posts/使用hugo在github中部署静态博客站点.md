---
title: 使用hugo在github中部署静态博客站点
date: 2022-07-08 17:41:41
tags: hugo
categories: hugo 
---

#### 使用静态网站生成器hugo在github上搭建个人博客

* 下载并安装hugo的windows安装包

  * 这里要说的是，hugo的本地配置相对要简单点。Binary (Cross-platform) 

    Download the appropriate version for your platform from [Hugo Releases](https://github.com/gohugoio/hugo/releases). Once downloaded, the binary can be run from anywhere. You don’t need to install it into a global location. This works well for shared hosts and other systems where you don’t have a privileged account.

    Ideally, you should install it somewhere in your `PATH` for easy use. `/usr/local/bin` is the most probable location.

    [Install Hugo | Hugo (gohugo.io)](https://gohugo.io/getting-started/installing/)
    
    <!--more-->

* 在cmd窗口下按顺序运行下面的语句：

  > hugo new site quickstart
  >
  > cd quickstart
  >
  > git init 
  >
  > git submodule add https://github.com/theNewDynamic/gohugo-theme-ananke.git themes/ananke
  >
  > 将 theme = 'ananke'添加到config.toml
  >
  > hugo new  posts/my-first-post.md   hugo会在/content/post/目录下建立my-first-post.md文件
  >
  > hugo -D   会自动生成静态站点保存在public目录下
  >
  > * 站点文档建立并编辑完成之后，如果需要本地打开，则在cmd窗口下运行hugo server -D 启动服务器   Web Server is available at http://localhost:1313/ (bind address 127.0.0.1) Press Ctrl+C to stop  
  >
  > * 如果站点发布在github上，把public下的内容复制到提前git clone的hugo站点目录下
  >
  > > git add .
  > >
  > > git commit  -m "hugo"  (如果出现不识别的用户信息，则是因为重新git clone了项目，需要再次配置用户名和邮箱信息：git config  user.name     > name    git config user.email.yourmailbox)
  > >
  > > git  push origin
  > >
  > > http://username.gihtub.io就可以在网页中打开发布在github上的静态网页
  > >
  > > （备注：最好先使用git clone把github上的hugo静态站点仓库下载到本地，最后提交的的时候简单点，直接使用git push origin 就可以了。否则要按照本地新建仓库关联到远程hugo静态站点仓库的方法，有点麻烦）
