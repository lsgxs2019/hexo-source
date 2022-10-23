---
title: 关于tiddlywiki的基本原理
date: 2022-07-03 07:33:15
tags: tiddlywiki 
categories: tiddlywiki
cover: /2022/07/03/关于tiddlywiki的基本原理/tiddlywiki.png
---

#### 关于tiddlywiki的简单理解

好久不玩tiddlywiki了，有点生疏，忘记了如何组织这些单个的tiddler。这里简单的总结并记录，以后再生疏的时候浏览一下，可以快速上手。

* TiddlyWiki的总体设计就是每个tiddler只保存一个简单的内容，坚持颗粒度最小化

* 使用目录或者标签的方式把具有相同标签的若干个tiddler组织在一起。这样的好处是随时可以拿来使用组织成为新的内容。

* 具体的操作方法就是新建一个tiddler，然后编辑这个tiddler，在当前版本下，点击工具上的图章按钮，弹出几种类型的预配置文本模版，修改一下具体的标签或者目录明即可实现快速组织。以tag为例：

  > <<list-links "[tag[task]sort[title]]">>
  >
  > 把tag[]方括号中间的内容更换为你需要显示的标签，就可以把所有属于这个标签的tiddler组织显示在当前这个正在编辑的tiddler中

* 一个新建的的tiddler有多个属性，最基本、最常用的也就是三个基本属性

  * tittle 

  * tag 

  * text    

    最后一个text属性就不用说了，就是这个tiddler的内容。tiddlywiki的最核心的就是tittle和tag属性，以及这两个属性的组织结构。tittle就是当前这个tiddler的标志，而它的tag属性就是他的上一级节点，或者容器。一个tiddle的tittle在你的tiddlywiki库中具有唯一性，是代表这个tiddler，把这个tittle作为另外一个或者多个tiddler的tag，就实现了tiddler之间包含和被包含的关系，正式这种递归的手法实现了无限延展性，实现了目录树。

    一句话总结： 想要包含若干个子目录，直接把这个tiddler的tittle作为其他tiddler的tag就实现了目录层级的绑定，这个有点哲学的方式，比如你要宣传某种思想。
