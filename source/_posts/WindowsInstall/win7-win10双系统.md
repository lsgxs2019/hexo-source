---
title: 安装win7-win10双系统
date: 2022-10-19 22:00:10
tags:
 - windows
 - win7
 - win10
 - 双系统
 - windows安装
categories: Windows
---

​    因工作环境需要，要在一台电脑上安装winodws7和winodws10双系统。几年前安装好了，一直很稳定，直到今年实在慢的不行，重装。但是不记得当时的安装方法了，安装方法各式各样。记得以前研究了一一阵子微软官方文档关于多启动的知识，时间久了不记得那些细节。所以感觉还是学习某个知识之后，用自己的语言总结要点记录下来，以后再需要的时候很快上手，节约自己的时间，尤其是这几年单位的网络环境复杂之后，各种问题需要解决，解决之后如果没有总结记录，时间长点再遇到又不记得了。今天分享自己另外一种win7、win10双系统的安装方法，记录下来。

* 首先安装windows7

  一般情况是在现有windows7正常使用的情况下，有了windows10的需求，而不是反过来，毕竟windows7使用的早，而且时间久。至于windows7的安装方法，可以采用原版安装镜像文件安装，也可以使用自己封装的或者别人封装好的系统恢复系统，两种方法都可以，后者可能不需要安装驱动，尤其对于多年的旧机器更好点，毕竟配套的驱动不好找。



* 然后安装Windows10

  使用Winpe启动系统，格式化目标分区，然后使用原版安装的方法，选择windows安装，而不是镜像复原。如下图所示：

  

~~~
通过这种方法安装好windows10之后，甚至不需要修复启动文件，直接就显示了双系统的菜单，一个是windows10，另外一个是Windows7。就这么简单
~~~

* 至于其他的安装方法，如果有时间也可以折腾一下再记录，现在有点懒，这就不错^-^。
