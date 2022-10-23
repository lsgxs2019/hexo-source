---
title: html小结构
date: 2022-08-23 17:03:27
tags:
  - html
categories: html
---

#### html文件小结构

手写html的时候，忽然忘记了，就复制一下吧

~~~
<!DOCTYPE html>
<html lang="en-us">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Layout Task</title>
    <link href="styles.css" rel="stylesheet" type="text/css">
  </head>

<body>


</body
~~~

<!--more-->

或者更懒一点，把css部分使用<style>..</style>放在head部分：

~~~

<!DOCTYPE html>
<html lang="en-us">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Layout Task</title>
    /* <link href="styles.css" rel="stylesheet" type="text/css"> */
    <style>
        /* your css code */
    </style>
  </head>

<body>

</body>
~~~

