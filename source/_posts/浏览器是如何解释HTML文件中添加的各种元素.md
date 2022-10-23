---
title: 浏览器是如何解释HTML文件中添加的各种元素
date: 2022-08-30 16:52:04
tags:
  - html
categories: html
---

#### 理解HTML文件中各种元素是如何被创建和布局

还没有系统学习DOM模型，但是在看到MDN文档中关于创建函数这一节时，对HTML、CSS和Javascript有了进一步的认识。这篇文档通俗易懂，尽管是讲解自定义函数的，但是从代码中可以学习到HTML中各种元素是如何被创建和布局的。原文的链接：[Build your own function]([Build your own function - Learn web development | MDN (mozilla.org)](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Building_blocks/Build_your_own_function#improving_the_function_with_parameters))

<!--more-->

~~~
function displayMessage() {
   const body = document.body;
  
   const panel = document.createElement('div'); //使用document对象的createElement方法创建各种类型的元素，参数是单引号包裹的html标签
   panel.setAttribute('class','msgBox');    //使用div对象实例的setAttribute方法来设置
   body.appendChild(panel);        //在body元素中使用appendChild（）方法添加一个div元素

   const msg = document.createElement('p');
   msg.textContent = 'This is a message box';
   panel.appendChild(msg);

   const closeBtn = document.createElement('button');
   closeBtn.textContent = 'x';
   panel.appendChild(closeBtn);

   closeBtn.addEventListener('click', () => panel.parentNode.removeChild(panel));

}

~~~

* 使用documnet对象的createElement()方法创建元素

* 使用元素的appendChild()方法在指定的元素中添加子元素

也就是说，这个displayMessage()函数是用代码动态的创建了html文件中的div、p、button三个元素，并根据包含关系完成布局。

我们在HTML文件只是书写了各种元素的标签（tag），在CSS文件中按照标签分类设置该类的数据项和值。但是最终呈现在浏览器上的是非常直观的可视化界面布局。实际上由浏览器最后扫描解释，根据HTML文件中各个元素类型和布局关系，调用document.createElement()方法创建指定的元素，调用元素的appendChild()方法向一个元素中添加子元素。

通过调用DOM模型中各种对象的方法完成创建和布局，设置各种元素的属性。每一个标签就是一个类，从CSS的书写方法可以看到，通过querySelector（）选择指定的元素，把CSS中设置的数据项和值应用到实例对象中对应的属性，就完成了样式的设计。这里自己的猜测，通过进一步的学习，可以查看一下html、css、javascript和DOM对象的设计架构，doument就是一个树根，下面可以创建和添加各种元素，通过读取CSS中的各种数据项和对应的数值值实现元素的样式化。所以，有了dom对象模型，html文件中的各种元素(element)和CSS中的各种样式，其实都可以通过javascript动态实现，只不过提供给前端开发者的是html和css文档，只需关注需要的元素、布局、样式，通过文本编辑器完成，除了html、css的文本编辑，还可以在javascript中调用浏览器提供的DOM api来实现动态功能。

* 回忆早年的的Windows桌面应用时代，以Visual basic、Visual C++、Delphi等可视化编程工具为代表，主要的设计方法是由用户直接勾画出应用程序操作的界面，提供各种可视化的窗口组件，轻松完成界面设计、组件特征值设置、事件添加，而这些可视化快速编程的背后，是一套复杂的基于面向对象特征的组件库（delphi叫做VCL，visaul component library），在编译阶段直接组装好整个产品，直接在桌面运行就可以了。

* 在回到web时代的internet，网络上的应用不同于桌面应用，网络带宽是有限的，把所有的组件装配好，通过网络下载到客户端运行的模式是行不通的。基于这种需求，HTML+CSS+JavaScript的设计模式正符合轻量化的思想。
  * html中通过指定标签包含各种元素
  
  * CSS通过分类选择各种原色，设定好特定的html元素的属性和数值
  
  * Javascript实现对html元素和css的动态操作，构建功能丰富的web网站和网页。
  
  * 客户端通过发送网络请求，把html、css、javasctipt下载到本地的页面，有browser的解释器负责浏览解析，生成dom对象树、css树，最后由browser渲染。javascript则解释为对web页面元素的操作。一句话，实际上html、css就像是一个拥有完善规格和参数的产品设计图纸，通过网络请求后下载到本地，由browser负责制造组装，而原材料就是集成在browser内部的各种对象，这些对象通过模型化组织在一起，比如DOM（document object model）就是一个属树形组织结构的对象集合，用来提供操作网页元素接口的对象模型（DOM APIs），还有windwo、audio、cavas等对象，他们内部甚至是用c++等高效的编程语言编写的，但是对于用户来讲，只需要调用这个接口提供的功能即可，不需要知道更细节内容。这些是初学了MDN的文档之后，对html、css、javascripte和Browser API的理解，可能会有偏差，继续学习吧。使用下载html、css、javascript文件到本地由browser解释和处理设计很精妙，毕竟这些文件都是文本文件，占用网络的资源很小，到本地由浏览器集成的各种组件库进行渲染、解释执行。下面这这段文字引用自mdn文档：
  
    ([Manipulating documents - Learn web development | MDN (mozilla.org)](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Client-side_web_APIs/Manipulating_documents))
  
    ```
    When writing web pages and apps, one of the most common things you'll want to do is manipulate the document structure in some way. This is usually done by using the Document Object Model (DOM), a set of APIs for controlling HTML and styling information that makes heavy use of the Document object
    ```
  
  * 关于browser API
  
    * Browser APIs are built into the browser — you can access them from JavaScript immediately。
  
    * Third party APIs。第三方API。Third party APIs are APIs provided by third parties — generally companies such as Facebook, Twitter, or Google — to allow you to access their functionality via JavaScript and use it on your site. One of the most obvious examples is using mapping APIs to display custom maps on your pages.[Third-party APIs - Learn web development | MDN (mozilla.org)](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Client-side_web_APIs/Third_party_APIs)。Third party APIs, on the other hand, are located on third party servers. To access them from JavaScript you first need to connect to the API functionality and make it available on your page. This typically involves first linking to a JavaScript library available on the server via a [`<script>`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/script) element, as seen in our Mapquest example:
  
      ```
      <script src="https://api.mqcdn.com/sdk/mapquest-js/v1.3.2/mapquest.js" defer></script>
      <link rel="stylesheet" href="https://api.mqcdn.com/sdk/mapquest-js/v1.3.2/mapquest.css"/>
      
      ```
      
      They usually require API keys。Requiring a key enables the API provider to hold users of the API accountable for their actions. When the developer has registered for a key, they are then known to the API provider, and action can be taken if they start to do anything malicious with the API (such as tracking people's location or trying to spam the API with loads of requests to stop it working, for example). The easiest action would be to just revoke their API privileges。第三方API提供商需要用户申请注册才能提供一个API keys。
      
      

