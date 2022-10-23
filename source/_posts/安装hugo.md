---
title: 安装hugo
date: 2022-06-28 15:29:58
tags: hugo
categories: hugo 
cover: /2022/06/28/安装hugo/hugo.jpg 
---

#### 安装配置hugo 

```
https://gohugo.io/getting-started/installing
```



### Assumptions 

1. You will use `C:\Hugo\Sites` as the starting point for your new project.
2. You will use `C:\Hugo\bin` to store executable files.

### Set up Your Directories 

You’ll need a place to store the Hugo executable, your [content](https://gohugo.io/content-management/), and the generated Hugo website:

1. Open Windows Explorer.

2. Create a new folder: `C:\Hugo`, assuming you want Hugo on your C drive, although this can go anywhere

3. Create a subfolder in the Hugo folder: `C:\Hugo\bin`

4. Create another subfolder in Hugo: `C:\Hugo\Sites`

   <!--more-->

### Technical Users 

1. Download the latest zipped Hugo executable from [Hugo Releases](https://github.com/gohugoio/hugo/releases).
2. Extract all contents to your `..\Hugo\bin` folder.
3. In PowerShell or your preferred CLI, add the `hugo.exe` executable to your PATH by navigating to `C:\Hugo\bin` (or the location of your hugo.exe file) and use the command `set PATH=%PATH%;C:\Hugo\bin`. If the `hugo` command does not work after a reboot, you may have to run the command prompt as administrator.

### Less-technical Users 

1. Go to the [Hugo Releases](https://github.com/gohugoio/hugo/releases) page.
2. The latest release is announced on top. Scroll to the bottom of the release announcement to see the downloads. They’re all ZIP files.
3. Find the Windows files near the bottom (they’re in alphabetical order, so Windows is last) – download either the 32-bit or 64-bit file depending on whether you have 32-bit or 64-bit Windows. (If you don’t know, [see here](https://esupport.trendmicro.com/en-us/home/pages/technical-support/1038680.aspx).)
4. Move the ZIP file into your `C:\Hugo\bin` folder.
5. Double-click on the ZIP file and extract its contents. Be sure to extract the contents into the same `C:\Hugo\bin` folder – Windows will do this by default unless you tell it to extract somewhere else.
6. You should now have three new files: The hugo executable (`hugo.exe`), `LICENSE`, and `README.md`.

Now you need to add Hugo to your Windows PATH settings:

#### For Windows 10 Users: 

- Right click on the **Start** button.
- Click on **System**.
- Click on **Advanced System Settings** on the right.
- Click on the **Environment Variables…** button on the bottom.
- In the User variables section, select the row labeled “Path” and click the **Edit…** button.
- Click the **Browse…** button and select the directory to which `hugo.exe` was extracted, which is `C:\Hugo\bin` if you went by the instructions above. *The path entry should be the folder where Hugo lives and not the binary itself.*
- Click OK at every window to exit.

#### For Windows 7 and 8.x users: 

Windows 7 and 8.1 do not include the easy path editor included in Windows 10, so non-technical users on those platforms are advised to install a free third-party path editor like [Windows Environment Variables Editor](https://eveditor.com/).

### Verify the Executable 

Run a few commands to verify that the executable is ready to run, and then build a sample site to get started.

#### 1. Open a Command Prompt 

At the prompt, type `hugo help` and press the Enter key. You should see output that starts with:

```
hugo is the main command, used to build your Hugo site.

Hugo is a Fast and Flexible Static Site Generator
built with love by spf13 and friends in Go.

Complete documentation is available at https://gohugo.io/.
```

If you do, then the installation is complete. If you don’t, double-check the path that you placed the `hugo.exe` file in and that you typed that path correctly when you added it to your `PATH` variable. If you’re still not getting the output, search the [Hugo discussion forum](https://discourse.gohugo.io/) to see if others have already figured out our problem. If not, add a note—in the “Support” category—and be sure to include your command and the output.

At the prompt, change your directory to the `Sites` directory.

```
C:\Program Files> cd C:\Hugo\Sites
C:\Hugo\Sites>
```

#### 2. Run the Command 

Run the command to generate a new site. I’m using `example.com` as the name of the site.

```
C:\Hugo\Sites> hugo new site example.com
```

You should now have a directory at `C:\Hugo\Sites\example.com`. Change into that directory and list the contents. You should get output similar to the following:

```
C:\Hugo\Sites> cd example.com
C:\Hugo\Sites\example.com> dir
Directory of C:\hugo\sites\example.com

04/13/2015  10:44 PM    <DIR>          .
04/13/2015  10:44 PM    <DIR>          ..
04/13/2015  10:44 PM    <DIR>          archetypes
04/13/2015  10:44 PM                83 config.toml
04/13/2015  10:44 PM    <DIR>          content
04/13/2015  10:44 PM    <DIR>          data
04/13/2015  10:44 PM    <DIR>          layouts
04/13/2015  10:44 PM    <DIR>          static
               1 File(s)             83 bytes
               7 Dir(s)   6,273,331,200 bytes free
```

简单总结一下

```
hugo version                         //测试安装结果，这些命令在cmd命令窗口下完成。暂时还没有用到git
hugo new site quickstart       //create a new site

cd quickstart 
git init 
git submodule add https://github.com/theNewDynamic/gohugo-theme-ananke.git  themes/ananke
echo theme = \"ananke\" >> config.toml    //或者直接编辑config.toml文件，添加theme = "ananke"即可指定theme

hugo new posts/my-first-post.md   //新建一个markdown文件

hugo server -D    //start the hugo server，注意这里的字母D要大写
http://localhost:1313    //在本地服务器打开你的第一个静态网站
```

## Deploy Your Website 

After running `hugo server` for local web development, you need to do a final `hugo` run *without the `server` part of the command* to rebuild your site. You may then deploy your site by copying the `public/` directory to your production web server.

Since Hugo generates a static website, your site can be hosted *anywhere* using any web server. See [Hosting and Deployment](https://gohugo.io/hosting-and-deployment/) for methods for hosting and automating deployments contributed by the Hugo community.

> Running `hugo` *does not* remove generated files before building. This means that you should delete your `public/` directory (or the publish directory you specified via flag or configuration file) before running the `hugo` command. If you do not remove these files, you run the risk of the wrong files (e.g., drafts or future posts) being left in the generated site.

[Host on GitHub | Hugo (gohugo.io)](https://gohugo.io/hosting-and-deployment/hosting-on-github/)
