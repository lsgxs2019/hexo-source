---
title: 关于html的简单理解
date: 2022-07-22 09:26:14
tags:  
  - html
  - 前端
categories: html
cover: /2022/07/22/关于html的简单理解/html.png
thumbnail: /2022/07/22/关于html的简单理解/html.png
---

HTML is a *markup language* that defines the structure of your content. HTML consists of a series of **[elements](https://developer.mozilla.org/en-US/docs/Glossary/Element)**,

HTML是标记语言，用来定义网页内容的结构，它由一系列元素组成。一个完整的元素由一对尖括号包含的内容组成，其中结束尖括号包含一个向右的斜杠，如下图所示:

<!--more-->

~~~

 <html>    ..     </html>

 <head>    ..     </head>

 <title>   ..     </title>
 
 <body>    ..     </body>

~~~

这些主要的元素是结构化网页内容的框架元素。

其他常用的元素如下图：

~~~
<p>   ..   </p>    段落标记
<img          >    img标记没有结束标记，比如：<img src="images/firefox-icon.png" alt="My test image">
<H1>  ..  </h1>
<H2>  ..  </h2>
<ol>  ..  </ol>    有序列表
<ul>  ..  </ul>    无序列表
<a>   ..  </a>     链接   比如：<a href="https://www.mozilla.org/en-US/about/manifesto/">Mozilla Manifesto</a>
~~~

~~~~
<!--comment-->

Note: Anything in HTML between <!-- and --> is an HTML comment. The browser ignores comments as it renders the code. In other words, they are not visible on the page - just in the code. HTML comments are a way for you to write helpful notes about your code or logic.
~~~~

