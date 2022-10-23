---
title: 在tiddlywiki中如何快速新建子tiddler
date: 2022-07-03 13:07:11
tags: tiddlywiki tagged sub-tiddler
categories: tiddlywiki
---

#### 如何快速建立下一层级的tiddler

* 第一种方法是利用tiddlywiki自带的工具栏，create a new tiddler tagged with  this one 。如下图所示：

  ![img](/images/create_new_tiddler_tagged.png)

  这个方法会自动新建一个tiddler，并且把当前tiddler的title的内容作为新建的tiddler的tag,这样两个tiddler就建立了tagged的关系，包容和被包容的关系，或者叫做目录、层级、父子tiddler等类似的的关系。

* 第二种方法就是手动编辑tiddler的tag属性，可以遵循把一个tiddler的title作为另外一个tiddler的tag属性的原则，就实现了类似的结构，tagged 。

  有了这个方法，那现在要个多个tiddler重新建一个父类的tiddler，如何实现呢？很简单，把这几个tiddler都加上同一个tag,然后新建一个tiddler，保持这个新建的tiddler的tittle和那几个子tiddler的tag相同就实现包含与被包含的关系。

  一句话，是通父类tiddler的title和子类tiddler的tag一致来实现链接的，递归延伸，无限扩容。

  > 建立了若干个子tiddler，那如何在父类的tiddler中显示出来呢?
  >
  > <<list-links "[tag[tagname]sort[title]]">>
  >
  > 这个tagname就是所有拥有tagname作为tag的tiddler，可以一次吧所有的tiddler过滤并显示出来，当然上面这一串文本也可以不用记忆，tiddlywiki的编辑工具栏上提供了这个预制的模版，点击那个图章按钮就可以生成显示的模版，然后再修改那个tagname为自己显示的tag即可。

  > 如果把多个tiddler直接添加在tiddlywiki右侧面板的目录树中呢?
  >
  > 在建立好面板右侧的目录树之后，根据需要设置好tiddler的tag属性为上级tiddler的title就可以实现目录和子目录结构的tagging 
  >
  > 也就是说，在tiddlywiki中，这种tagging方式可以有多种形式来显示，可以单独通过<<list-lingks "[tag[tagnmae]sort[title]]">>显示下一个tiddler里，也可以以目录树的形式显示。

  > 如果忘记了这种tagging技术的的组织和显示方式，可以打开某一个tiddler并处于编辑状态，查看源代码的书写方式。

```如何在一个tiddler下建立子项
一句话：把父目录的tittle作为子目录的tag就创建了目录树；或者说把一个tiddler的tittle作为其他tiddler的tag就建立了包容关系。实际上tiddlywiki的工具栏上有一个按钮，创建子tiddler这个按钮，按下这个按钮之后，就会以当前的tiddler作为模版，把这个tiddler的tittle赋值到系建立的tiddlyer的tag，如此就形成了包容关系
```

