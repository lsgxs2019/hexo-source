@echo off

git add .
@echo  git add . 添加文档完成

git commit -m "udpate"
@echo  git  commit 完成

git  push origin 
@echo  推送到github 完成

@echo  准备使用hexo g 生成网页
hexo g 

@echo 切换到public目录下
cd C:\hexo-source\public

git add .
@echo  git add . 添加文档完成

git commit -m "udpate"
@echo  git  commit 完成

git  push origin 
@ 推送到lsgxs2019.github.io 完成