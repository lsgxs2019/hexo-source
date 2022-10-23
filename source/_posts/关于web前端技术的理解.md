---
title: 关于web前端技术的理解
date: 2022-08-23 22:35:27
tags:
  - web
categories: web 
---

#### 关于web 前端技术的基本理解

web前端技术的三个要素，html、css、javascript。通过浏览MDN文档，大致理解了html、css、javascript的基本作用和相互之间的关系，做个简单的笔记备忘。

html实现web文档的结构化(就像建筑的框架结构)，css对html元素进行布局和渲染（就像房间的装修），javascript实现html元素的动态处理，为网站增加交互功能，通过浏览器的解释最终实现丰富多彩的网页。

<!--more-->

~~~
HTML provides structure and meaning to our text, CSS allows us to precisely style it, and JavaScript contains a number of features for manipulating strings, creating custom welcome messages and prompts, showing the right text labels when needed, sorting terms into the desired order, and much more
~~~



* html 

  hypertext markup language ,超文本标记语言，主要用来把web文档结构化。具体是通过丰富多彩的元素来实现，这些元素通过各种标签(tag)来表示。比如:

  ~~~
  h1、h2、h3、h4、h5、h6来表达标题的字体大小
  <html>..</html>
  <head>..</head>   文档的头部
  <body>..</body>   文档的主题
  <div> ..</div>    区域
  ..............    各种文档对象的标签
  
  ~~~

  <!--more-->

* css 

  casecade stylesheet ,主要用来对html元素进行布局和装饰渲染。

  * 基于盒子原理实现布局，每个盒子都有width、padding 、boder等特征。
  
  * 通过多种选择器实现分类渲染
    * h1{ property1: val1 }   
    
    * p{  property1: val1;property2: val2;} 
    
      

下面的内容来自MDN官方文档：
[CSS basics - Learn web development | MDN (mozilla.org](https://developer.mozilla.org/en-US/docs/Learn/Getting_started_with_the_web/CSS_basics))) by MDN contributors is  licensed under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/)

[Different types of selectors](https://developer.mozilla.org/en-US/docs/Learn/Getting_started_with_the_web/CSS_basics#different_types_of_selectors)

There are many different types of selectors. The examples above use **element selectors**, which select all elements of a given type. But we can make more specific selections as well. Here are some of the more common types of selectors:

| Selector name                                              | What does it select                                          | Example                                                      |
| :--------------------------------------------------------- | :----------------------------------------------------------- | :----------------------------------------------------------- |
| Element selector (sometimes called a tag or type selector) | All HTML elements of the specified type.                     | `p` selects `<p>`                                            |
| ID selector                                                | The element on the page with the specified ID. On a given HTML page, each id value should be unique. | `#my-id` selects `<p id="my-id">` or `<a id="my-id">`        |
| Class selector                                             | The element(s) on the page with the specified class. Multiple instances of the same class can appear on a page. | `.my-class` selects `<p class="my-class">` and `<a class="my-class">` |
| Attribute selector                                         | The element(s) on the page with the specified attribute.     | `img[src]` selects `<img src="myimage.png">` but not `<img>` |
| Pseudo-class selector                                      | The specified element(s), but only when in the specified state. (For example, when a cursor hovers over a link.) | `a:hover` selects `<a>`, but only when the mouse pointer is hovering over the link. |

There are many more selectors to discover. To learn more, see the MDN [Selectors guide](https://developer.mozilla.org/en-US/docs/Learn/CSS/Building_blocks/Selectors).

