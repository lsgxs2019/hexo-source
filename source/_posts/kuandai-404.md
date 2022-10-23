---
title: kuandai-404
date: 2022-09-28 15:19:21
tags:
  - 宽带上网 
categories: web 
---



#### Wifi可用但是电脑不能上网

该文章来自网络，源文章链接如下：

> [wifi可用，但台式电脑连不上网怎么办，用命令排查解决](https://mbd.baidu.com/newspage/data/landingsuper?rs=3381578440&ruk=EXyrSsH5mVQSTG_1f2-yLw&isBdboxFrom=1&pageType=1&urlext=%7B%22cuid%22%3A%22Yavwag8gSag8ava1Ya2680auHu0EPvfQ0P2Ot0ae-ujaaviV0i-1alfs1Pl-iSP5E97mA%22%7D&context=%7B%22nid%22%3A%22news_9100027993478306919%22,%22sourceFrom%22%3A%22bjh%22%7D)





**台式电脑一般通过网线连接网络，问题可能出现在路由器到台式电脑之间，我们可以通过ping这条Windows命令进行准确排查，把问题缩小到具体环节，再进行针对修复，一般按顺序可分以下四种环节。**



**一、电脑网卡有问题**

**二、电脑连接不了路由器**

**三、电脑可以连接路由器，却连不上外网**

**四、电脑可以连接外网，但网页打不开**

在开始排查前，我们要用到以下几样东西：

1、命令窗口：Windows自带，可通过按Win+R组合键，输入CMD调出。

2、路由器IP地址：在路由器背面信息栏可以找到，一般是192.168.0.1或者192.168.1.1，这里以后者为例。

3、本机地址：127.0.0.1

4、必要时用到windows自带的Windows PowerShell(管理员）工具

5、操作系统：windows 11

6、路由器：

接下来开始按顺序排查。

<!--more-->

**一、电脑网卡有问题**

排查方法：Win+R组合键，输入CMD，弹出命令窗口，输入ping 127.0.0.1 回车，反馈信息有如下两种情况。

1、回馈正常（如下图），可以直接跳往第二步。



![img](/images/网络/kuandai/024f78f0f736afc3e8b76885f06229cdb645121f.png@f_auto)

2、反馈请求超时（如下图）

![img](/images/网络/kuandai/c83d70cf3bc79f3d07f36c00f9da0f18728b2971.png@f_auto)



说明电脑本身存在问题，可以尝试通过重装网卡驱动程序或重装系统解决，还是不行的话，那是硬件层面的问题了，只能拿给专业维修人员修复。

**二、电脑连接不了路由器**

排查方法：在如上的命令窗口输入 ping 192.168.1.1 回车，反馈信息有如下四种。

1、正常反馈（如下图），可以跳往第三步。

![img](/images/网络/kuandai/f31fbe096b63f624341eec7cc13f29f11b4ca397.png@f_auto)

2、一般故障

![img](/images/网络/kuandai/eaf81a4c510fd9f94d89ce76615616232934a49c.png@f_auto)

这种是网线问题，可以通过插拔网线，或者更换网线来解决。

3、常见故障或者来自XXXX的回复，无法访问目标主机

![img](/images/网络/kuandai/0df431adcbef7609781d8da870a661c57cd99e73.png@f_auto)

这里的XXXX指的是路由器的地址，此两种情况大多数是网卡偶尔的故障，可以通过禁用网卡，再启用网卡进行恢复，或者直接重启电脑。

4、请求超时



![img](/images/网络/kuandai/e7cd7b899e510fb359e933e884480a9cd0430c65.png@f_auto)

此种情况大多是IP地址配置问题，有以下2种解决方案。

（1）在命令窗口输入 netsh winsock reset回车，然后重启电脑解决，如果操作不成功，一般需要管理员权限，请右键左下角Win图标，使用windows终端（管理员）或者Windows PowerShell（管理员）进行操作



![img](/images/网络/kuandai/023b5bb5c9ea15ced956b716f37bf8fa3b87b2fe.png@f_auto)



（2）静态IP地址设置，右键此电脑-属性-网络和Internet-以太网-IP分配-编辑-手动，IPv4开。

地址分配如下：

IP地址：192.168.1.X （X代表2-254之间整数，如果路由器IP是192.168.0.1，那要把X前的1改成0）

子网掩码：255.255.255.0 （无特殊情况，不需要更改）

网关：192.168.1.1 （如果路由器IP是192.168.0.1，那就改成这个地址）

首选DNS：192.168.1.1 （具体情况如上）

![img](/images/网络/kuandai/fc1f4134970a304e328c0f9392b3658fc8175cb5.png@f_auto)



**三、电脑可以连接路由器，却连不上外网**

1、反馈正常（如下图），可以跳往第四步

![img](/images/网络/kuandai/241f95cad1c8a786ad1648b33a720b3471cf50d7.png@f_auto)

2、反馈找不到主机，一般有以下通过下面2种方法解决。

（1）DNS服务器分配地址需要设置，这里以带路由功能的GPON天翼网关(4口单频)为例

操作步骤：浏览器网址输入192.168.1.1，访问管理界面，高级设置-网关信息-WAN IP-复制



![img](/images/网络/kuandai/7c1ed21b0ef41bd55bfa079212a143c238db3db4.png@f_auto)

右键此电脑-属性-网络和Internet-以太网-DNS服务器分配-编辑DNS设置，手动-IPv4开，把复制到的IP地址粘贴进首先DNS里，顺便把192.168.1.1填到备用DNS里。



![img](/images/网络/kuandai/09fa513d269759eefcf133e7f880811f6c22dffa.png@f_auto)

2、路由器设置问题，老式路由器功能不正常，可以重启或通过IP地址和MAC地址绑定，具体以TP Link 路由器TL-WR886N为例。

操作步骤：浏览器输入tplogin.cn-应用管理-IP与MAC绑定-添加到绑定设置,找到自己电脑的MAC和IP地址，点击最右侧的“+”字图标，进行添加完成。

![img](/images/网络/kuandai/0ff41bd5ad6eddc4028cfce07ca074f4536633c2.png@f_auto)

MAC地址获取方法：Win+R组合键-CMD-输入ipconfig /all 回车（/前要空格），显示较多往下拉，在以太网适配器 以太网里，物理地址就是电脑的MAC地址。



![img](/images/网络/kuandai/b812c8fcc3cec3fd6bcebd3d95f316368694270e.png@f_auto)

![img](https://pics3.baidu.com/feed/4a36acaf2edda3cc0ade71744592fb08213f9235.png@f_auto?token=82d081e2f84128a1597b2fc01ade16ac)



**四、电脑可以连接外网，但网页打不开**

1、端口映射问题，可以在命令窗口输入netsh winsock reset回车，进行网络文件修复解决

2、网卡驱动问题，通过第三方设备下载网卡驱动，在电脑上重新安装解决。

3、虚拟网卡问题，喜欢玩游戏的朋友大多会装些网络加速软件，这些软件基本都会自带修复功能，可以通过LSP修复或者卸载虚拟网卡解决。





该文章来自网络，源文章链接如下：

> [wifi可用，但台式电脑连不上网怎么办，用命令排查解决](https://mbd.baidu.com/newspage/data/landingsuper?rs=3381578440&ruk=EXyrSsH5mVQSTG_1f2-yLw&isBdboxFrom=1&pageType=1&urlext=%7B%22cuid%22%3A%22Yavwag8gSag8ava1Ya2680auHu0EPvfQ0P2Ot0ae-ujaaviV0i-1alfs1Pl-iSP5E97mA%22%7D&context=%7B%22nid%22%3A%22news_9100027993478306919%22,%22sourceFrom%22%3A%22bjh%22%7D)
