@echo off

@echo ��ǰ·��%cd%
pause 
@echo �л���publicĿ¼��
cd c:\hexo-source\public
@echo ��ǰ·��%cd%
pause

git add .
@echo  git add . ����ĵ����
git commit -m "udpate"
@echo  git  commit ���
git  push origin 
@ ���͵�lsgxs2019.github.io ���