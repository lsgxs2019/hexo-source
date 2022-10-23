---
title: 如何快速重建hexo博客
date: 2022-10-22 19:38:02
tags:
  - github
  - hexo 
categories: hexo
---

#### 快速重建托管在github的博客

不知道哪个原因，自动发布在github上的博客不能正常发布了，查了后台的actions细节，有个错误代码，好长时间没有解决，平时只是写文章然后推送到github。 干脆回到最初的手工状态。时间久了可能会不记得那些细节，把所有需要的步骤做个备忘：

~~~
--安装工作
安装git ： 只选择采用main分支，其他默认一路回车。
安装node.js 默认一路回车
安装hexo ： npm install -g hexo-cli 

--配置用户和邮箱
git config --global user.name "xxxxx"
git config --global user.email "xxxxx"

--生成密钥对
ssh-keygen  -t ed25519 -C "你的邮箱"     --以前的-t rsa以后慢慢不支持了吧，不确定，就用-t ed25519
clip < ~/.ssh/id_ed25519.pub   把公钥输出到剪切板，然后登录github,在github右上角弹出的settings，然后点击ssh ，把以前的ssh删除，再新建ssh，把剪切板的内容粘贴保存，新的公钥就保存好了。
或者不用clip < 的方式输出公钥文本，它就是个文本文件，保存在当前用户目录下（在gitbash里，用~代表当前用户目录，比 cd ~ ,或则 cd ~/.ssh   密钥对文件默认是保存在当前用户的.ssh目录下的）
私钥可以在推送项目到github之前添加,在推送之前把私钥添加给ssh代理，否则显示没有权限
   eval $(ssh-agent -s)         --启动ssh-agent
   ssh-add ~/.ssh/id_ed25519    --添加成功后会显示当初生成密钥对设置的邮箱注释信息
  
~~~

<!--more-->

hexo 在本地生成静态文件

~~~
--生成静态文件放在public目录下。
hexo g 
--如果想在本地浏览新发布的文章
hexo server  
http://localhost:4000
~~~

推送hexo 到github

~~~

--毕竟是个人的笔记记录，没啥重要的数据，直接在github仓库settings里，在最下边选择删除这个仓库，然后再新建一---个仓库，名称为username.github.io,不要选择任何选项，不要选择增加readme文件，这样生成的是一个空的仓库。---根据最后显示的操纵步骤：
   git init
   git add .
   git commit -m ""xxx
   git branch xxxx   如果有了分支，就不用创建
   git  remote add origin git@github.com:username/username.github.io.git   第一次发布要建立链接，以后不用。
   --在推送之前把私钥添加给ssh代理，否则显示没有权限
   eval $(ssh-agent -s)
   ssh-add ~/.ssh/id_ed25519
   
   git push -u origin main    。第二次以后推送就用git push origin ,第一次要把两个分支对应起来。或者更全面的写法：
                                  -- git push -u origin main:main ,当然两个分支名称可以根据实际情况写。

   --上面的步骤是从头设置项目的步骤，正式写博客时就不必了。
   --所有工作完成以后，以后写文档的动作如下：
   hexo new --path dirname/filename.md  "your title"   --新建文档，在source/_posts下编辑文档
   hexo g                                              --生成到public目录
   --这里记得要切换到public目录下
   git add .
   git commit -m "update"
   git push origin  
   

 有点懒了，还没有刚开始学习的时候玩的顺，先这样，以后有兴趣再折腾换个喜欢的主题，再设置在后台自动化发布。就和以前的设置一样，两个分支，一个source分支存放整个hexo项目源文件，另外一个分支用来发布静态网页。比起以前要麻烦不少，不过熟悉了，就是3行命令的事情，小意思^-^。或者把hugo笔记也发布起来，看那个更有效率。那个github后台的action自动化发布的细节没有完全掌握，涉及到不少环节，出了小问题很浪费时间，时间其实很贵。有时间试试travis实现自动化发布。
   
   
~~~

**关于新建空的仓库之后，github给出的几个建议，可以好好看看，随着对git和github的理解更全面点，现在看和刚开始学的时候看就不一样：**

~~~
git init                   --初始化你的项目目录，纳入git版本管理，直接新建个.git目录。
git add readme.md          --这里是添加一个文件，变通一下，你可以添加整个项目文件，也就是git add .
git commit -m "xxx"
git branch -M main         --  这里是新建一个分支，并且必须是该名为main ,因为一起可能是master 
git remote add origin git@github.com:username/username.github.io.git 
git push -u origin main 
            --这几个动作是针对没有纳入.git管理的项目，从头开始和git、github打交道。新的项目推送到github之前，提示没有权限，在项目目录下运行
            -- eval $(ssh-agent -s )
            -- ssh-add ~/.ssh/id_ed25519
            --把私钥完成代理注册之后，就可以正常推送到github了
            
            
--对于现有的.git仓库和github链接：
git remote add origin git@github.com:username/username.github.io.git  --直接建立新的连接
git push -u origin main 
~~~

