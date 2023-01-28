---
title: Windows系统镜像的操作
date: 2023-01-28 23:00:01
tags:
---

* 查看Windows镜像信息

  ~~~
  f:\windows101903\sources>dism   /Get-Wiminfo    /Wimfile:install.wim
  
  部署映像服务和管理工具
  版本: 10.0.18362.1
  
  映像的详细信息: install.wim
  
  索引: 1
  名称: Windows 10 教育版
  描述: Windows 10 教育版
  大小: 15,254,692,495 个字节
  
  索引: 2
  名称: Windows 10 企业版
  描述: Windows 10 企业版
  大小: 15,254,763,241 个字节
  
  索引: 3
  名称: Windows 10 专业版
  描述: Windows 10 专业版
  大小: 15,255,648,236 个字节
  
  索引: 4
  名称: Windows 10 专业教育版
  描述: Windows 10 专业教育版
  大小: 15,254,622,257 个字节
  
  索引: 5
  名称: Windows 10 专业工作站版
  描述: Windows 10 专业工作站版
  大小: 15,254,657,142 个字节
  
  操作成功完成。
  ~~~
* 从多合一Windows镜像中提取指定的镜像
  

~~~
//Export  Image  by index

f:\windows101903\sources>dism  /Export-image   /sourceimagefile:install.wim  /sourceindex:3 /destinationimagefile:F:\win10pro1903.wim

提取到指定的镜像之后，可以把原来的Sources\install.wim删除，把这个提取出来的wim文件重命名为install.wim，复制到sources文件夹下面,这样就实现了指定版本的定制，在Winpe下的Dism++下，利用Dism++的还原功能实现WIndwos10的安装，可以简单实现win7系统和win10双系统共存。（Dism++的wim文件还原功能似乎没有选择指定镜像索引的界面，所以使用dism命令提取）
~~~

