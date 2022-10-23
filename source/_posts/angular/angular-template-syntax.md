---
title: angular学习笔记之模板语法
date: 2022-10-09 21:54:43
tags:
 - angular
categories: angular
---

#### angular的template syntax

在angular的component中，html template包括标准的html元素和angular扩充的语法部分。在模板中主要有一下几种书写形式：

* `{{item.name}}`

* *ngFor  一个迭代器，在本例中为items数组中的每一个item创建一个列表`<li> </li>`

* (click)   主要用于事件绑定

* [item]  component中的一个property数据。

* `<app-hero-detail> </app-hero-detail`>    component的selector,书写在父组件的html template中时，可以在父组件中显示这个子组件视图(view)

  <!--more-->

  ~~~
  <h2> hello world </h2>
  
  <p><em>Select item from  list to see details.</em></p>
  <ul>
    <li *ngFor="let item of items">
      <button type="button" (click)="selectitem(item)">
        {{item.name}}
      </button>
    </li>
  </ul>
  
  <!-- 
    [item],用方括号包裹item,用来告诉angular:item是当前selector标识的component的一个property:item.这个selector是<app-item-detail> </app-item-detail>
  -->
  
  <app-item-detail *ngIf="selecteditem" [item]="selecteditem"></app-item-detail>
  
  ~~~

  template的一部分代码段，仅仅用来演示和说明component中的模板语法写法。

  

  

