@echo off

git add .
git commit -m "udpate"
git  push origin 

hexo g 

cd public 

git add .
git commit -m "udpate"
git  push origin 
