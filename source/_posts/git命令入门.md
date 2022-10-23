---
title: git操作git仓库命令入门
date: 2021-05-28
tag: git 
categories: git
---

* 新建一个目录 branch_demo

* cd branch_demo

* git init 

* git status 

* git checkout -b branch-name

* echo "git branch start" >> readme.md

* git add .

* git commit -m "git branch start"

* git remote add origin https://github.com/usermame.github.io.git    or    git remote add origin git@github.com:username.github.io.git

* git push -u origin    ----新建分支第一次推送到远程时，需要-u参数指明上游，或者使用--set-upstream,以后再推送就不需要-u参数了

* 长时间不玩git了,居然忘记了如何与github.com端的仓库通讯，这里做个简单的备忘：

  * git remote -v  

    ![img](/images/git-github连接方式查询.png)
  
  
  
  

