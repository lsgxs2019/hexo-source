---
title: rps设置
date: 2022-06-02 17:31:44
tags: stock
categories: rps
---

#### 如何设置RPS

* 新建一个"上市一年以上"的自定义板块，并使用选股公式将上市一年以上的股票选入该板块
  通达信软件，Control+F，技术指标公式—其他类型
  ![img](/images/通达信-公式管理器.jpg)

  ![img](/images/rps_一年以上_1.jpg)
  ```html
  BARSCOUNT(C)>N; N为参数，一般设为250
  ```
  

  ![img](/images/rps_一年以上_2.jpg)

* 新建一个计算股票涨跌幅的技术指标公式，命名为EXTRS


  通达信软件，Control+F，技术指标公式—其他类型

  ![img](/images/通达信-公式管理器.jpg)

  点击上图中的新建，进入下图:

  ![img](/images/EXTRS公式编辑器.jpg)

  ```
  EXTRS:(C-REF(C,N))/REF(C,N);
  
  N缺省值为250。
  ```

* 建立扩展数据，对股票涨幅进行统计

通达信软件输入：.902，进入扩展数据管理器。 选中第1条扩展数据，如下图

![img](/images/rps-扩展数据管理器.jpg)

点击上图中的修改，在扩展数据属性里首先设置数据1如下：

技术指标公式选择新建的“EXTRS”指标

计算参数为120（对应半年期的RPS）

计算时段为本地所有数据

计算品种为“自定义板块”下面的“上市一年以上”这个板块

勾选“精确复权”及“生成横向排名数据”

排名方法为“0-1000归一化顺序”

用同样的方法设置250、50三个时间的扩展数据

* **第四步，再新建一个技术指标公式：股价相对强度RPS**

通达信软件，Control+F，技术指标公式—其他类型—新建

![img](/images/rps公式编辑器.jpg)

股价相对强度RPS, 出两条彩线的代码如下：

```
X:=EXTDATA_USER(1,0);{120天的}

RPS120:X/10,LINETHICK2,COLORGREEN;

IF(RPS120>=M,RPS120,DRAWNULL),LINETHICK2,COLORRED;

;

Y:=EXTDATA_USER(2,0);{250天的}

RPS250:Y/10,LINETHICK2,COLORWHITE;

IF(RPS250>=M,RPS250,DRAWNULL),LINETHICK2,COLORRED;
```

M是参数，可以根据自己的偏好设为85-90，我个人偏好90。意思就是RPS大于90时，显示为红线。

*  **第五步，确保下载完整的历史数据。**

  * **下载完整的历史数据！这个只需要操作一次，请自行修改下载的开始时间**

    ![img](/images/自定义盘后数据下载.jpg)

  * **需要每天存盘下载日线数据，并全部刷新两条扩展数据。这个操作每天收盘后，都需要进行一次，才能显示最新的RPS曲线。**

    ![img](/images/rps扩展数据每日更新.jpg)

