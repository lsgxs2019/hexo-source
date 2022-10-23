---
title: 在github上保存tiddlywiki
date: 2022-07-02 06:33:45
tags: tiddlywiki token
categories: github
---

#### 如何将tiddlywiki的笔记自动保存在githtub上

github为用户提供了免费的github pages服务，可以将生成的静态网站发布到github pages，通过浏览器访问静态网页，这是当前静态博客的流行做法。同样，可以将tiddlywiki的笔记发布到github pages上，并且通过github开放的api接口实现部分的编程功能，比如通过personal access token来访问github，实现笔记的自动保存。下面是在github里生成personal access token，并在tiddlywiki里配置实现在github里自动保存笔记：

* 注册github的账号

* 在账号的操作界面右上角点击+号弹出下拉菜单，选择并点击settings菜单项。

  ![img](/images/token_settings.png)

  <!--more-->

* 在操作界面的左边栏底部点击developer settings
  ![img](/images/token_developer_settings.png)
  ![img](/images/token_developer_settings_2.png)
  
* 点击personal access tokens，选择生成personal access token 

  ![imag](/images/generate_new_token.png)

* 输入token的描述信息、过期时间、访问权限后生成该token

  ![img](/images/token_note_expiration.png)

     ![img](/images/token_permissions.png)

---

在线打开TiddlywWiki笔记的`Control Panel`，选择`Save`标签，选择`GitHub Saver`,设置下面几项：

* UserName:`你的GitHub账号`
   Tokern :`在GitHub中生成的token`复制到这里即可
  Target repository：`Username/FullNameOfRepository`
  Target branch for saving`main`
  Path to target file ：`如果index.html放在main分支下的话，这个路径就不必设置了。如果把index.html放置再其他的自定义目录，这里需要设置`。这里不必设置
  Filename of target file :`index.html`
  Server API URL:`https://api.github.com` 目前系统默认为GitHub提供的网址，不必自行设置。

![img](/images/tiddlywiki_token.png)