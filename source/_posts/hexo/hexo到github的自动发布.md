---
title: Hexo到github的自动发布
date: 2022-10-27 16:42:51
tags:
 - hexo
 - 自动发布
 - actions
 - github
categories: hexo
---



#### 重新实现Hexo博客到github的自动发布

一直正常的从本地的hexo项目根目录推送到github的hexo-source仓库，根据仓库目录下的workflow文件脚本实现远程的编译、创建、发布到在github的个人站点主页(username.github.io)。不知何故，一个错误信息出现，找了好久没有解决。今天把项目\.github\workflows\目录下的hexo-actions.yml内容重新修改了另外一个版本，重新配置了源码仓库的Secrets和静态站点仓库的Deploy Keys，顺利成功。没时间，先简单记下大概步骤，以后再详细完善。

* ssh-keygen -t ed25519  -C "username@126.com"    

  生成一对秘钥:公钥id_ed25519.pub和私钥id_ed25519

* 把公钥添加在仓库的Deploy Keys 下，把私钥添加在Secrets的actions下。
  * 有空试试Secrets下新增环境变量和没有环境变量的区别（没有环境变量，直接建立仓库secret的话，只是在环境管理下面不显示列表吗？）
  
  * 或者不新增环境变量，直接新建仓库secret，然后记住仓库secret的名字，在workflow脚本里引用时直接使用secrets.hexo_deploy_xxx的格式。
  
    ![img](/images/RepositorySecrets.png)
  
    这个图显示hexo-source仓库里只有Repository Secret，把env_hexo的环境变量删除了，经过测试，依然可以正确的自动化发布。估计环境变量下的多个secrets的应用范围是账户级别的，而仓库级别的Secret只要访问指定的仓库就可以。
    
    <!--more-->
  
* 把hexo 项目根目录下的_config.yml文件Deploy部分修改一下：


    type: git
    repo: git@github.com:username/username.github.io.git
    branch: main

~~~
name: Hexo Deploy

on:
  push:
    branches:
      - main

jobs:
  build:
    runs-on: ubuntu-18.04
    if: github.event.repository.owner.id == github.event.sender.id

    steps:
      - name: Checkout source
        uses: actions/checkout@v2
        with:
          ref: main

      - name: Setup Node.js
        uses: actions/setup-node@v1
        with:
          node-version: '12'

      - name: Setup Hexo
        env:
          ACTION_DEPLOY_KEY: ${{ secrets.HEXO_DEPLOY_SECRET2 }}
        run: |
          mkdir -p ~/.ssh/
          echo "$ACTION_DEPLOY_KEY" > ~/.ssh/id_rsa
          chmod 700 ~/.ssh
          chmod 600 ~/.ssh/id_rsa
          ssh-keyscan github.com >> ~/.ssh/known_hosts
          git config --global user.email "xxxxx@126.com"
          git config --global user.name "username"
          npm install hexo-cli -g
          npm install

      - name: Deploy
        run: |
          hexo clean
          hexo deploy


~~~

* 就是这么多，直接推送，成功了，细节以后再整理吧。
