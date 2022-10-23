---
title: 实现hexo到github的自动推送
date: 2022-07-03 18:17:13
tags: hexo github action
categories: hexo 
---

#### 实现hexo到github的自动推送

博客搭建有一年多了吧，平时记录内容的工具有两个，最初是使用tiddlywiki,通过github的personal access token实现在线自动保存到github。后来接触到hexo，属于当下流行的静态站点生成器，把记录的内容发布到自己熟悉的web服务器上，这里还是选择github。平时记录内容很简单，使用下面几条命令：

> hexo new "tittle"
>
> git add .
>
> git commit -m "your commit "
>
> git push origin 

很顺利把记录的内容发布到github pages，通过指定的域名浏览自己的博客。感觉很方便，可是时间久了，居然忘记了当时是怎么搭建的这个流程^-^。这里简单回忆一下，再次忘记的时候查看一下。

<!--more-->

安装heox需要的环境这里就省略了。搭建好hexo的环境之后，一般是hexo g ,生成静态站点；再使用hexo d，也即是deploy的意思，当然是要在后缀为yml的配置文件中设置好发布的相关参数。

> hexo  clean   （清理以前生成的静态文件）
>
> hexo   g       （重新生成静态站点文件）
>
> hexo   d       （发布站点）

更详细的内容可以参考hexo官方的文档：[文档 | Hexo](https://hexo.io/zh-cn/docs/)

但是这样操作会比较麻烦，而且这样只会上传public目录下的文件，也就是生成的站点文件，其他的项目目录和文件则不会上传，但是有时候又时候因为更换机器的原因，要重新构建项目的所有目录和文件，比较麻烦，索性就利用git命令把整体的hexo 项目目录上传到单独一个仓库分支，再由github的actions执行上面的三个命令，完成站点文件的生成和发布。

但是利用git命令把hexo 所有目录和文件推送到github的仓库，利用后台设置好的github workflow action 自动调用hexo 生成、发布站点的命令，把静态站点发布到github的pages。这个文件是在hexo 项目的.github\workflows\目录下: hexo-actions.yml。

```
# workflow name
name: CI Hexo Blog Deploy LTS

# source branch on push, auto run
on: 
  push:
    branches:
      - source

jobs:
  Deploy-Pages: 
    name: Deploy Hexo Public To Pages
    runs-on: ubuntu-latest 
        
   .....
   .....
   .....
  
 
    - name: Generate public files
      run: |
        hexo clean
        hexo generate 
        
    - name: Deploy To Github Pages 
   
      run: |  
        git clone https://${Github_Pages} .github_pages
        cd .github_pages
        git checkout master
        cd ../
        mv .github_pages/.git/ ./public/
        cd ./public/
        git add .
        git commit -F ../commit-message.log
        git push --force --quiet "https://${Github_Token}@${Github_Pages}" master:master

```

这个只是action的局部代码，可以看出实际上是在github上执行了hexo 的一系列动作：

> hexo clean 
>
> hexo generate
>
> 最后还是执行了一系列git命令，deploy to github pages,把生成的站点文件推送到github pages下的master 分支，这里的指定的是master分支，也可以自己指定github仓库项目里source branch:

![img](/images/github_pages_source_branch.png)
