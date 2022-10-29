---
title: 常用git命令
date: 2022-10-29 16:30:18
tags:
 - git
 - git命令
categories: git 
---



#### 常用git命令

* 从远程仓库下载项目到本地

  ~~~
  git clone git@github.com:username/repo_name.git 
  git clone https://github.com/username/repo_name.git
  
  git add  .
  git  commit -m   "your-comment of updates"
  git push origin local-branch:remote-branch
    --简写： git push origin
  ~~~

* 在本地新建项目提交到远程的新建空仓库

  ~~~
  git init 
  git add .     --把本地的项目目录添加到新目录下，然后运行这条命令
  git commit -m "update"
  git remote add origin git@github.com:username/repo_name.git 
  git push -u origin main 
      
    
  ~~~

  <!--more-->

* 查看分支

  ~~~
  git  branch   --查看本地分支
  git branch -r  --查看远程分支
  git branch -a  --查看所有分支
  ~~~

* 删除分支

  ~~~
  git branch -d branch-name   --删除本地分支
  git push origin  --delete remote-branch   --删除远程分支
    --或者:git push origin   :remote-branch   --用本地空分支推送到对应的远程仓库分支
  ~~~

  
