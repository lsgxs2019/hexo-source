@echo off

git add .
@echo  git add . ����ĵ����

git commit -m "udpate"
@echo  git  commit ���

git  push origin 
@echo  ���͵�github ���

@echo  ׼��ʹ��hexo g ������ҳ
hexo g 

pause
@echo ��ǰ·��%cd%
@echo �л���publicĿ¼��
cd /d C:\hexo-source\public
@echo ��ǰ·��%cd%
pause

git add .
@echo  git add . ����ĵ����

git commit -m "udpate"
@echo  git  commit ���

git  push origin 
@ ���͵�lsgxs2019.github.io ���