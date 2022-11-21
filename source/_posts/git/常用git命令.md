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
     --两种方法任选一种，推荐使用第一种。
  git add  .
  git  commit -m   "your-comment of updates"
  git push origin local-branch:remote-branch
    --简写： git push origin
  ~~~

* 在本地新建项目提交到远程的新建空仓库

  ~~~
  git init   --初始化本地项目，自动新建一个.git目录，该目录是隐藏的，需要打开资源管理的隐藏选项才能看到。在git init之后可以使用git status，可以看到已            --经显示了一个main分支。
  git add .     --把本地的项目目录添加到新目录下，然后运行这条命令
  git commit -m "update"
  git remote add origin git@github.com:username/repo_name.git 
  git push -u origin main 
    --第一次推向空仓的时使用-u参数，以后就不用了。
    --第二次以后推送： git push origin  
  ~~~

  <!--more-->

  注意，这里说的是在github上新建的是空仓，也就是没有初始化的仓库（新建时没有包含readme文件），如果包含readme文件后，在上面的推送步骤就会提示错误，大概意思是远程有一些变动，在本地没有，需要合并后再推送。需要用带有`--reabase`参数的git pull 执行合并，然后再推送到远程就可以了。

  `git pull --rebase origin main`

  

* 查看分支

  ~~~
  git  branch    --查看本地分支
  git branch -r  --查看远程分支
  git branch -a  --查看所有分支
  ~~~
* 查看当前工作状态
  ~~~
  git status   --经常查看状态，可以看到当前工作的提示信息
  ~~~
*  删除分支

  ~~~
  git branch -d branch-name   --删除本地分支
  git push origin  --delete remote-branch   --删除远程分支
    --或者:git push origin   :remote-branch   --用本地空分支推送到对应的远程仓库分支,也可以删除远程分支

* 在新建一个github仓库时，如果包含了readme来初始化仓库时，把本地项目推送到github时，会提示禁止推送，远程有工作需要和本地合并。因此，需要先使用`git pull --rebase origin main `合并远程仓库。

*  git-bash 小技巧
  ~~~
  1、经常在git-bash 中使用cd ~/.ssh,其中的~带表着当前用户目录，时间久了不用git的话，也许会忘记。
  2、在git-bash命令终端里复制和粘贴快捷键：
      ctrl+ins     --复制
      shift+ins    --粘贴在git-bash 窗口
                   --当然如果要粘贴在windows还是直接ctrl+v
                   --因为有的连接路径很长，可以复制和粘贴的话可以减少错误 
  ~~~
*  git remote 

  * git remote add origin git@hugo:username/username.github.io.git

    添加一个指向远程github仓库的连接，别名为origin 

  * git remote remove  origin 

    这个命令用来删除错误的或者不需要的连接


 * 新建一个独立分支

    ~~~
    git  checkout  --orphan gh-pages
    echo "hello world" > readme.md    --在分支下新建一个readme.md文件
    git  add .
    git commit -m "add orphan branch"
    git push origin gh-pages:gh-pages  --当然，冒号后边的gh-pages可以省略，远程会自动建立与本地同                                      --名的分支，这里是明确一下本地和远程分支的对应关系。
    git  branch -a                     --通过git-add-commit-push ，这里才能查看到新建的独立分支
    最后可以把gh-pages分支下除了.git目录之外的所有内容删除，建立分支时会默认复制main分支的内容。然后再使用git-add-commit-push这个流程，可以把远程的的gh-pages分支内容也删除掉。
    git checkout  main --切换到main分支，可以看到main分支下原有的内容

  



