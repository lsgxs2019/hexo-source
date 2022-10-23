---
title: usehugo
date: 2022-07-09 17:37:38
tags: hugo 
categories: hugo
---

## 使用hugo建立静态站点

hugo 是一款简单且功能强大的静态站点生成器，让新手很快上手制作自己的静态博客，下面是具体的使用方法要点：

~~~
step1: 下载windows平台的hugo可执行文件,把hugo可执行文件所在目录添加到path环境变量.建立一个保存hugo站点的目录，比如g:\hugo\
       在g:\hugo\bin目录下保存hugo.exe可执行文件；在g:\hugo\sites下保存站点。具体目结构如下
       g:\hugo\bin\hugo.exe
       g:\hugo\sites

step2: 切换到g:\hugo\sites目录下，在cmd窗口下按顺序运行下面的语句
       hugo new site quickstart    --创建站点
       cd quickstart
       git init   --用git init 初始化站点，纳入git管理
       git submodule add https://github.com/hugo-theme-xx.git themes/hugo-theme-xx    --下载自己喜欢的theme，这里是通用写法
       将 theme = ‘hugo-theme-xx’添加到config.toml  --在配置文件中标注theme
step3：hugo new posts/my-first-post.md   ----创建markdown格式的文档
step4:hugo server -D 启动服务器 Web Server is available at http://localhost:1313/ (bind address 127.0.0.1) Press Ctrl+C to stop
step5: hugo -D 会自动生成静态站点保存在public目录下  ----生成静态的站点，默认目录是public，可以在config.toml文件中通过publishdir=‘xxxxxx-              path’来指明自定义的发布路径，比如你可以发布在git clone下来的目录，直接就可以通过git add.   ;git commit -m "";git push origin提交到            github.com.
       官方文档说明：在使用huog -D发布静态站点之前删除public下的内容，否则可能会出错。
       Output will be in ./public/ directory by default (-d/--destination flag to change it, or set publishdir in the config            file).
       Deploy Your Website 
       After running hugo server for local web development, you need to do a final hugo run without the server part of the              command to rebuild your site. You may then deploy your site by copying the public/ directory to your production web              server. Since Hugo generates a static website, your site can be hosted anywhere using any web server. See Hosting and            Deployment for methods for hosting and automating deployments contributed by the Hugo community.
       Running hugo does not remove generated files before building. This means that you should delete your public/ directory          (or the publish directory you specified via flag or configuration file) before running the hugo command. If you do not          remove these files, you run the risk of the wrong files (e.g., drafts or future posts) being left in the generated site.
step6: 如果发布在github上，可以把public下的内容复制到提前git clone的目录下

      git add .
      git commit -m “hugo”
      git push origin


~~~

 [Quick Start | Hugo (gohugo.io)](https://gohugo.io/getting-started/quick-start/)

 [Install Hugo | Hugo (gohugo.io)](https://gohugo.io/getting-started/installing/)****

 [Basic Usage | Hugo (gohugo.io)](https://gohugo.io/getting-started/usage/)
