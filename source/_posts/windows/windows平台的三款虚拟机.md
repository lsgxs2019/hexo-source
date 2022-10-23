---
title: Windows平台的三款虚拟机
date: 2022-10-22 21:51:46
tags:
 - windows
 - 虚拟机
categories: 虚拟机
---

#### 简单体会一下Windows平台的三款虚拟机

* vmware player 

  这个我个人使用的最早、时间最长的一款。当时主要用来做windows系统的封装，操作简单，功能也很全面，在虚拟机和宿主机之间传递文件很便捷 。现在发展到了vmware workstation player 16.2.4,[download](https://customerconnect.vmware.com/en/downloads/info/slug/desktop_end_user_computing/vmware_workstation_player/16_0) ,这款是免费下载的，其他专业版是商业版。

  

* [virtualbox ](https://www.virtualbox.org/)

  目前最新版为virtualbox7.0,[download](https://www.virtualbox.org/wiki/Downloads),目前自己用的机器配置不高，安装win10虚拟机有点卡，win11更是不符合安装条件。win7自然是很流畅，抽空再试试win10,机器慢慢被淘汰，我再干5年也可以退休了，想想时间过得真快。

* hyper-V 

  这个是Windows10自带的虚拟机，在程序与功能模块开启hyper-v即可使用。最大的特点就是流畅，鼠标在宿主机和虚拟机之间随意切换，几乎没有卡顿现象（宿主机是win10,虚拟机也是win10）。目前使用window10，不知到什么原因，git bash 下不能识别基本的命令，把环境变量折腾了一边，没有效果，无奈，准备安装win10双系统，结果试用了hyper-v，发现没有必要安装双系统了。
