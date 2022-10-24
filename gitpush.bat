@echo off

@echo===============================hexo-source-git-add-commit-push-start================================
git add .
@echo  git add . 添加文档完成
@echo.
@echo.
git commit -m "udpate"
@echo  git  commit 完成
@echo. 
@echo.
git  push origin 
@echo==============================hexo-source-git-add-commit-push-successfully============================
@echo.
@echo.
@echo 当前路径%cd%
pause 
@echo 切换到public目录下
cd c:\hexo-source\public
@echo 当前路径%cd%
pause
@echo.
@echo. 
@echo=============================lsgxs2019.github.io-git-add-commit-push-start==============================
git add .
@echo  git add . 添加文档完成
@echo. 
git commit -m "udpate"
@echo.
@echo  git  commit 完成
@echo. 
git  push origin 
@echo=============================lsgxs2019.github.io-git-add-commit-push-successfully=========================
