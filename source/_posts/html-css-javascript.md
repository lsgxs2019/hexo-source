---
title: html-css-javascript
date: 2022-08-25 09:15:06
tags:  
  - html
  - css
  - javascript
categories: web
---

#### html 、css、javascript的相互关系

* html是用来结构化web文档的标记语言，比如定义一个段落、文章头部、数据表、嵌入网页的图片或者视频。

* CSS是一套语言规则，用来美化HTML文档内容。比如设置背景色、字体、把网页内容布局为多列等。

  可以阅读MDN中关于css是如何工作的：[How CSS works](https://developer.mozilla.org/en-US/docs/Learn/CSS/First_steps/How_CSS_works#how_does_css_actually_work)。

* javascript是一种动态程序设计语言，可为网站提供动态交互特性。比如用来动态更新网页内容，控制多媒体、动态图片、美化网页上的任何内容。

  * javascript常见的用法是通过Document Object Model(DOM) API来动态修改html和css，以达到更新用户界面的效果。Web文档中的代码通常是按照在网页中出现的顺序加载和运行，如果javascript代码在要修改的html、css内容出现之前加载和运行，就会出现错误。可以参考MDN中关于脚本加载的策略（ [Script loading strategies](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/First_steps/What_is_JavaScript#script_loading_strategies) )

    

下面是一个包含css、javascipt的完整html文件结构：

<!--more-->

~~~
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <title>Media Queries: a simple mobile first design, step 1</title>
    <meta name="viewport" content="width=device-width">
    <link href="styles.css" rel="stylesheet" type="text/css">  </link>
        
  </head>

  <body>

    <p>Player 1: Chris</p>
    <script src="main.js" defer> </script>

</body>
</html>
~~~

在html文件中引用css和javascript有两种方式:

~~~
 内部引用
  (1)引用Css。直接在html的head区域通过<style>  css rules  </style>标签引用css
  (2)引用Javascript。在html的<head>或者<body>区域通过<script> javascript code</script>引用。也就是说，把css和javascript的内容直接写在html文件中。适合小规模的html、css、JavaScript代码。
  
 外部引用
 （1）引用CSS。 把Css代码放在一个单独的.css文件中，在html文件的<head>区域通过<link>标签引用css文件：<link href="xxx.css" rel="stylesheet">
 （2）在<body>区域的适当位置通过<script>标签引用javascript文件：  <script src="filename.js" defer></script>
 （3)css和javascript代码是放在单独的.css和.js文件中，可以实现代码的复用性，不用让大块的css、javascript代码堆积在html文件中，提高html文件的可读性提高。
   总结，对于引用javascript而言，无论是内部引用还是外部引用，都是使用<script>..</script>标签。对于Css而言，内部应用使用<style>..</style>标签，而外部引用则要使用<link href="filename.css" rel="stylesheet">。
~~~

  [JavaScript basics](https://developer.mozilla.org/en-US/docs/Learn/Getting_started_with_the_web/JavaScript_basics) by  MDN contributors is  licensed under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/)

下面是来自MDN官方文档的另外一个例子：

```
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>My test page</title>
    <link href="http://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet" type="text/css">
    <link href="styles/style.css" rel="stylesheet" type="text/css">
  </head>
  <body>
    <h1>Mozilla is cool</h1>
    <img src="images/firefox-icon.png" alt="The Firefox logo: a flaming fox surrounding the Earth.">

    <p>At Mozilla, we’re a global community of</p>

    <ul> <!-- changed to list in the tutorial -->
      <li>technologists</li>
      <li>thinkers</li>
      <li>builders</li>
    </ul>

    <p>working together to keep the Internet alive and accessible, so people worldwide can be informed contributors and creators of the Web. We believe this act of human collaboration across an open platform is essential to individual growth and our collective future.</p>

    <p>Read the <a href="https://www.mozilla.org/en-US/about/manifesto/">Mozilla Manifesto</a> to learn even more about the values and principles that guide the pursuit of our mission.</p>
    <button>Change user</button>
    <script src="scripts/main.js"></script>

  </body>
</html>

```

所有涉及到的文件资源目录结构如下：

![img](/images/html-css-javascript.png)
