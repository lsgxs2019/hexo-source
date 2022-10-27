---
title: win7封装笔记
date: 2022-10-27 10:04:03
tags:
 - windwos
 - win7
 - 系统封装
categories: windows
---

#### Windows7封装笔记

好几年前学习系统封装，把单位的旧机器驱动集成到镜像里，维护系统时省时省力。一直在QQ空间的日志里保存，现在重新发到这里。

 

一、安装虚拟机

1、选用小巧简洁的Vmware Player 6 或者 vmware play pro12、vmware plyaer workstation14 最为虚拟机平台。

2、在vmware play下新建win7虚拟机时，选择稍后安装操作系统，直接安装的话，默认会产生100M的启动分区，而系统分区会在另外一个分区。

3、坚持硬件系统最少的原则，移除打印机、usb设备、甚至网卡，只保留cpu、内存、硬盘、cd/dvd、显示器。

![img](http://b325.photo.store.qq.com/psb?/V10BIiiL0s9pAL/MIgEWmDpaJNJtLDKS4V35w0*2y3EO.*0NnpCaQB8kow!/b/dEUBAAAAAAAA&bo=vwLPAQAAAAADIHY!)

4、在虚拟机启动时，按F2键进入虚拟机的bios设置。

![img](http://b306.photo.store.qq.com/psb?/V10BIiiL0s9pAL/Vw7Y3iyQ2o1l*sNq5A9Ga.dYIeY1Ach2AU3lKIyr1gw!/b/dDIBAAAAAAAA&bo=KgKJAQAAAAADEJU!)

<--more-->

在BIOS的I/O device configration项目下，串口、并口和软盘都禁止掉，如下图所示：

![img](http://b306.photo.store.qq.com/psb?/V10BIiiL0s9pAL/WJ0Qo9NkXSH8SKJSK*xH2Zm3dK53Y13ucKc5pcgEP4Q!/b/dDIBAAAAAAAA&bo=KgKJAQAAAAADEJU!)

二、在BIOS中设置光驱为第一驱动顺序，挂载天空的优启通ISO镜像，启动进入winpe，对虚拟机的硬盘进行分区。

三、在vmware player 下安装win7操作系统。

安装方法一般有两种：

1、win7旗舰版ISO镜像进行常规的安装，在需要输入用户名密码时，按下快捷键Ctrl+Shift+F3，系统会自动重新，进入桌面后进入最适合的封装用户模式

2、使用优启通的ISO镜像启动进入winpe模式，使用优启通的winpe下的恢复镜像工具，恢复单独从win7安装盘中提取的install.wim文件即可完成win7安装，在输入用户名和密码的时候输入Ctrl+Shift+F3，进入适合封装的超级用户模式。

四、win7的封装步骤

1、安装完毕适合封装的win7后，可以先安装360压缩、office2007等常用软件。

2、安装天空提供的win7补丁。

3、此时封装前的准备工作已经完成，可以启动winpe，对当前的win7进行备份，以方便合适的时候恢复镜像，不必从头安装。

4、在c:\盘的根目录下建立sysprep目录，把天空的万能驱动包放在sysprep目录下，同时吧天空的goruntime（运行时间库）也放在sysprep目录下，在系统部署完毕后自动删除c：\sysprep目录。同时，在c:\盘根目录下建立tools目录，把天空的软件安装包EasyInstall放在tools目录下，吧部署中需要的图片文件目录也放在这个tools下，吧win7激活程序Oem7f7.exe也放在tools目录下。

把天空的封装主程序放置在虚拟机的d:\盘下。

5、准备工作完成后，就可以在win7下运行EasySysprep主程序，开始第一阶段的封装。

需要注意的是，在第一阶段封装完毕后，重启系统后必须进入winpe系统进行第二阶段的封装，因此，在封装之前记得设置虚拟机的光盘挂载为优启通的ISO启动镜像。如果忘记设置，系统启动没有进入winpe的话，就开始直接的部署，导致封装失败。

6、进入winpe后，运行EasySysprep封装主程序，开始第二阶段的封装。按照天空封装软件的设置，默认即可。设置好运行时间库和万能驱动的目录即可，从部署结果来看，是在部署中先调用运行时间库，然后再调用天空的万能驱动包。最后在自定义的调用接口中，选择时机为【第一次进入桌面时】，先调用天空提供的Easyinstall,再调用小马激活程序来激活win7，注意设置程序的参数，最后是设置删除c:\tools目录，完成最后的清理工作。因为c:\sysprep目录是自动清理的，因此不用设置删除动作。

7、至此全部的封装工作完成，可以在winpe下备份封装的成果，文件保存为wim，也可以保存为.gho文件。最后放松一下，测试一下部署，欣赏自己的劳动成果^-^
