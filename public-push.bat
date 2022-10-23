@echo off

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