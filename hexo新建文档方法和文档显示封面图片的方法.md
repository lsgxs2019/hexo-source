---
title: hexo新建文档的方法
date: 2022-09-22 10:48:04
tags:
  - hexo 
  - hexo 新建文档
categories: hexo 
---

#### 在git命令行窗口新建hexo文档的方法

* hexo  new "title"

  刚开始使用hexo 的时候，一直使用这种方法新建文档，默认在`source/_posts`目录下生成以title为文件名的title.md文件。随着文档越来越多，没有目录的分类，所有文档都在`source/_posts`目录下，查找、编辑起来很费劲。通过查找[hexo官方文档]([指令 | Hexo](https://hexo.io/zh-cn/docs/commands))，经过摸索使用下面另外一种发法，可以实现在`source/_posts`目录下生成自定义的目录和markdown文件。

* `hexo new   --path  dir-name/file-name.md "title"`

  切换到博客项目根目录下，弹出鼠标右键快捷菜单，然后选择“git bash  here”菜单项打开git bash 终端，输入上面的一串命令，就会在`source/_posts/dir-name`目录下生成file-name.md的markdown文件和同名的一个目录。如下图：

  ![img](/images/hexo/hexo新建文档方法/hexo-new-path.png)
  
  * 如果要在文档中引用图片文件，和文档同目录下的同名目录下图片却无法正常显示，只能想办法把要引用的图片文件放在source/images目录下，图片文件也可以分类存放，在markdown文件中引用时指定对应的目录和文件路径即可。

* 如何显示封面图片

  * 首先文档要保存在`_posts`下，而不是子目录下；其次是在`_posts`下新家一个和文档"title"字符串的子目录，封面图片要保存在这个子目录下。
  * 然后在文档的frontmatte中设置cover:    /yyyy/mm/dd/title/title-dir/image-name.png

  `cover: /2022/09/22/hexo新建文档的方法/image-name.png`
