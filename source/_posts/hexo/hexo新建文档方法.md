---
title: hexo 新建文档的方法
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

  <!--more-->

  这样就会在`source/_posts`目录下新建一个dir-name目录，保存生成的file-name.md文件。如下图：
  
  ![img](/images/hexo/hexo新建文档方法/hexo-new-path.png)
  
  * 如果要在文档中引用图片文件，和文档同目录下的同名目录下图片却无法正常显示，只能想办法把要引用的图片文件放在source/images目录下，图片文件也可以分类存放，在markdown文件中引用时指定对应的目录和文件路径即可。`不知道为何在同位置的目录下放置图片，发布后不能正确显示图片，只能分类放在sources/images/目录下，引用时使用![img](/images/dir-name/filename.png)。`hexo文档里有带有page作为参数的hexo new ：` hexo new page   --path  _posts/dir-name/filename.png。`生成对应的文件和目录，但是在文档里引用同名目录下保存的图片文件，发布后仍然不能正常显示。
通过这样的方法，可以在`_posts`目录下分类组织各类markdown文件，便于查找和编辑。
