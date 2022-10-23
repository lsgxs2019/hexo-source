---
title: 在git-bash下运行批处理推送博客到github“
date: 2022-10-23 21:49:21
tags:
 - hexo
 - 批处理
categories: hexo 
---

#### 如何在git-bash下运行批处理实现自动推送

手动推送hexo项目和publci到不同的github仓库有点麻烦，如果操作错误的话不容易发现，第三次操作时错了目录，发现使用hexo  new 创建文档时出错，就用下面这个命令回撤后正常：

* git reflog  查看最近推送记录，根据备注选择合适的回撤记录，所以要认真写备注，要不然在回撤的时候没法做决定^-^

* git reset  --hard   id-xxx    -- 这里最后的参数标识特定的推送记录
* git push -f origin main 
* git pull 

##### 下面试试git-bash里运行批处理

~~~
@echo off

@echo==========git-add===git-commit==git-push===
git add .
@echo  git add . 添加文档完成

git commit -m "udpate"
@echo  git  commit 完成

git  push origin 
@echo  推送到github 完成================git-push end=


@echo 当前路径%cd%
pause 
@echo 切换到public目录下
cd c:\hexo-source\public
@echo 当前路径%cd%
pause

git add .
@echo  git add . 添加文档完成
git commit -m "udpate"
@echo  git  commit 完成
git  push origin 
@ 推送到lsgxs2019.github.io 完成
~~~



