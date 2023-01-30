---
title: windows10访问局域网共享打印机问题
date: 2023-01-30 21:03:21
tags:
  - 打印机
categories:  打印机  
---



####  安装好的Windows10无法访问局域网中的共享打印机

[有空在自己的机器上贴上真实的图片]

![img](/images/Win10Printer/1.jpg)

<!--more-->

![img](/images/Win10Printer/2.jpg)

![img](/images/Win10Printer/3.jpg)

![img](/images/Win10Printer/4.jpg)

~~~
win10系统，网络已经设置完成，专用网络及公用网络设置的共享也开启，无密码共享。连接打印机所在电脑可以进入，也可以看到打印机及共享文件夹。但在具体连接时，出现“windows无法连接到打印机错误码0x0000011b”

方法1、网上大部分解决方案都是在打印机所在电脑中卸载相关更新，如：“更新和安全”—“查看更新历史记录”—“卸载更新”然后找到补丁代号是KB5005569/KB5005573/KB5005568/KB5005566/KB5005565补丁双击卸载。有的甚至要求在第三方连接的电脑上卸载以上更新。

（亲测有效）方法2、进入注册表编辑器后，使用左侧的菜单导航到以下位置：HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Print
创建新的 DWORD 值。进入正确的位置后，请确保选中“Print”键，然后移到右侧部分，右键单击空白区域并选择“新建> DWORD（32 位） 值”
接下来，将新创建的注册表值命名为 RpcAuthnLevelPrivacyEnabled，然后按 Enter 保存更改。
双击新创建的 RpcAuthnLevelPrivacyEnabled 值。进入“编辑”菜单后，将“基数”设置为“十六进制”，将“数值数据”设置为 0，然后单击“确定”保存更改。
如若不行［HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows NT\Printers\PointAndPrint］设置"RestrictDriverInstallationToAdministrators"=dword:00000000
试试

~~~

