---
title: angular学习笔记之一
date: 2022-10-07 09:30:39
tags:
  - angular
  - 前端
  - 框架
categories: angular
---

#### angular学习笔记之一

* angular是什么

  angular 是一个基于TypeScript的web前端开发平台，是基于组件技术的用来构建可扩展程序的框架，拥有一套工具帮助用户完成项目的构建、测试。

* 组件技术

  angular的设计架构是基于component,每一个component定义了一个包含应用程序逻辑和所需数据的类，并且关联一个显示界面的的HTML模版，还有一个对应的style.css（一个组件控制一屏幕上的一小部分，可以称作为为视图。它由一个TypeScript类、一个HTML模板和一个CSS样式表组成。TypeScript类定义了HTML模板和渲染的DOM结构之间的交互，而样式表则描述了它的外观）就是下面三个部分：

  * 由@Component 装饰符指定的TypeScript类（*.ts），负责数据(property|attribute)和方法（Funtion|Method)。

  * 一个HTML模版文件(*.html)，负责用户界面。这个angular模版实际上是标准的HTML元素加上angular特有的符号扩充。当然，在最终的HTML显示之前，这些扩充由angular框架解释和修改。关于component 和template，请阅读:[Angular - Introduction to components and templates](https://angular.io/guide/architecture-components)

  * 一个样式文件(*.css)，负责样式装饰

    <!--more-->

    示例：

    ~~~
    import { Component } from '@angular/core';
    
    @Component({
      selector: 'hello-world',
      templateUrl: './hello-world.component.html'
      styleUrls: ['./hello-wordl.component.css']
    })
    export class HelloWorldComponent {
      //  the component's behavior.
    }
    ~~~

    这个是component组件的.ts文件代码，其中元数据包括三个部分：selector,templateUrl,styleUrls。

    `selector`实际上这个组件的标识，就像在Html文件中使用标准的标记一样，在组件的模版中使用，示例：

    `<hello-world>      </hello-world>`，使用方法和普通的tag一样，只不过这个是在anglular中自定义的，当angular渲染这个组件时，最终的DOM就像下面这个样子：

    ~~~
    <hello-world>
       组件模版文件中的内容，也就是'./hello-world.component.html'文档中的内容显示在这里，CSS使用的是'./hello-wordl.component.css'渲染
    </hello-world>
    ~~~

    `templateUrl` 每个component有一个HTMl模版文件，用来定义这个组件如何布局和渲染的，可以使用内联模式或者指定html文件路径两种方法。

    总结：component中html模版文件和component class类之间的通讯方式，是在类中提供数据和方法，在HTML模版中使用component class的selector作为标签，使用class的元数据指定的模版文件进行布局和渲染。在HTML模版文件中从component class 获取数据的三种方法：

    * {{class-message}} 假定这个class-message是component class中的一个property，在html模版中用双花括号包裹这个property就可以获取数据。

    * attribute 绑定。

      ~~~
      <button type="button"  [disabled]="canClick" (clcik)="HelloWorld()"  >
        hello world
       </button>
      
      ~~~

      把文档对象的property用方括号包裹起来，成为property绑定。

    * 事件绑定。 声明一个事件响应器来回应用户在文档对象上的操作，比如鼠标单击、选中，键盘输入或者触摸屏的操作。上面那个带括号的（click）就给click事件关联到component class中的一个方法，在用户单击组件时调用这个方法。
    
      * 总之，在componnet的html模版文件中，从class中读取数据和方法，使用方扩号[]实现property绑定、圆括号（）实现事件绑定。
      
        数据绑定在component和template之间起着重要的作用，同时在父组件和子组件之间的通讯也扮演者重要的角色。
  
* component中selector的理解

  *  原文的解释：`matches the name of the HTML element that identifies this component within a parent component's template.`我的翻译：在父组件的HTML模版中，用来匹配标识这个子组件的HTML元素名称。也就是说在父组件的HTML模版文件中，使用`<selector-name>  </seletor-name>`来标识引用的子组件，凡是看到这个和常用HTML 元素写法一样的组件selector，就是实例化这个子组件。感觉angular的component组件技术就是类似HTML的各种元素(element),就是一个自定义的元素，通过一个类来包含数据和方法，然后可以在html文件中和普通的html元素一样的写法来使用，比如:

    ~~~
    <p> hello woril </p>
    <h> hello world </h>
    <div>  hello world</div>
    <app-component>  hello world </app-component>
    可以在<p>..</p> 、<h> </h>、<div> </div>中使用元素的property,和方法等。这些property、methon不就是来自类里的property和methon吗？只不过我们平时直接使用这些标准的标签元素及property等，从来没有思考过它的内部实现方式。而现在angular的component也实现了在html模版文件中和标签元素同样的书写方法，反过来说那些标准的、我们习以为常的标签元素，内部实现方法是不是和angular的component类似呢?也许是因为我没有学习过html内部实现的具体方法，现在只能猜测，继续学习吧^-^
    ~~~

    

更详细的理解可以参考angular文档：

[Angular - What is Angular?](https://angular.io/guide/what-is-angular)

[Angular - Introduction to Angular concepts](https://angular.io/guide/architecture)

[Angular - Introduction to components and templates](https://angular.io/guide/architecture-components)

[Angular - Setting up the local environment and workspace](https://angular.io/guide/setup-local)

[Angular - Getting started with Angular](https://angular.io/start)

[Angular - Tour of Heroes application and tutorial](https://angular.io/tutorial)

可以在angular的官方网站下载到Example源代码（https://angular.io/guide/example-apps-list），解压后：

~~~

1、在windows10的CMD窗口下切换到这个项目目录
2、npm install --安装需要的npm包
3、ng serve
4、http://localhost:4200
~~~

