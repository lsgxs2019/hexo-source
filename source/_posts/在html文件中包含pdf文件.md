---
title: 在html文件中包含pdf文件
date: 2022-08-01 17:43:16
tags: 
  - html
  - pdf
categories: html
cover: 
thumbnail: 
---

#### 如何在html文件中包含PDF文档



```
<object data="pdfname.pdf" type="application/pdf"
        width="1000" height="1500">
  <p> 如果没有PDF相关的插件， 可以下载这个PDF文档
    <a href="pdfname.pdf"> download the PDF file. </a>
  </p>
</object>

```

这里的pdf文件和html文件在同一个目录下，可以直接书写pdf的文件名，可以通过浏览器下载pdf文件到本地。

