---
title: 如何用javascript获取和操作HTML中的的DOM对象
date: 2022-08-27 23:16:10
tags:
  - javascript
  - DOM
categories: web
---

#### 如何在javascript操作HTML文件中的DOM对象

还没有系统学习DOM对象模型，但是看到示例代码，可以学到一般的对HTML文件中的DOM对象操作的基本方法：

~~~
<button>Start machine</button>
<p>The machine is stopped.</p>

//这些标签就可以构建标准的DOM对象，这些对象都有相应的属性、方法和事件，是不是和面向对象编程的概念有点像，暂时先这样理解，也许有偏颇。
~~~

~~~
const btn = document.querySelector('button');  //用一个btn的常量来指向button的元素。这个document.querySelector('')就是常用的获取元素的方法
const txt = document.querySelector('p');       //用一个txt的常量来指向P元素

btn.addEventListener('click', updateBtn);      //给btn指向的button元素添加一个相应click事件的方法updateBtn

function updateBtn() {
  if (btn.textContent === 'Start machine') {
    btn.textContent = 'Stop machine';
    txt.textContent = 'The machine has started!';
  } else {
    btn.textContent = 'Start machine';
    txt.textContent = 'The machine is stopped.';
  }
}

~~~

