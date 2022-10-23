---
title: html文件中引用资源的路径
date: 2022-07-22 07:32:43
tags: 
  - html
  - 前端
  - url
categories: html
toc: true
cover: /2022/07/22/html文件中引用资源的路径/html-file-path.png
thumbnail: /2022/07/22/html文件中引用资源的路径/html-file-path.png
---

> #### [Dealing with files](https://developer.mozilla.org/en-US/docs/Learn/Getting_started_with_the_web/Dealing_with_files) by  MDN contributors is licensed under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/)

#### html文件中引用图片等文件的路径

## [File paths](https://developer.mozilla.org/en-US/docs/Learn/Getting_started_with_the_web/Dealing_with_files#file_paths)

To make files talk to one another, you have to provide a file path between them — basically a route, so one file knows where another one is. To demonstrate this, we will insert a little bit of HTML into our `index.html` file, and make it display the image you chose in the article ["What will your website look like?"](https://developer.mozilla.org/en-US/docs/Learn/Getting_started_with_the_web/What_will_your_website_look_like) Alternatively, you can choose an existing image at your disposal, on your computer or from the Web, and use it in the following steps:

<!--more-->

1. Copy the image you chose earlier into your `images` folder.

2. Open up your

    

   ```
   index.html
   ```

    

   file, and insert the following code into the file exactly as shown. Don't worry about what it all means for now — we'll look at the structures in more detail later in the series.

   ```
   <!DOCTYPE html>
   <html lang="en-US">
     <head>
       <meta charset="utf-8">
       <title>My test page</title>
     </head>
     <body>
       <img src="" alt="My test image">
     </body>
   </html>
   ```

   Copy to Clipboard

3. The line `<img src="" alt="My test image">` is the HTML code that inserts an image into the page. We need to tell the HTML where the image is. The image is inside the *images* directory, which is in the same directory as `index.html`. To walk down the file structure from `index.html` to our image, the file path we'd need is `images/your-image-filename`. For example, our image is called `firefox-icon.png`, so the file path is `images/firefox-icon.png`.

4. Insert the file path into your HTML code between the double quote marks of the `src=""` code.

5. Save your HTML file, then load it in your web browser (double-click the file). You should see your new webpage displaying your image!

![A screenshot of our basic website showing just the Firefox logo - a flaming fox wrapping the world](https://developer.mozilla.org/en-US/docs/Learn/Getting_started_with_the_web/Dealing_with_files/website-screenshot.png)

Some general rules for file paths:

- To link to a target file in the same directory as the invoking HTML file, just use the filename, e.g. `my-image.jpg`.
  * 同目录直接书写文件名称
  
- To reference a file in a subdirectory, write the directory name in front of the path, plus a forward slash, e.g. `subdirectory/my-image.jpg`.
  * 资源在该html文件的子目录，书写子目录及文件路径
  
- To link to a target file in the directory **above** the invoking HTML file, write two dots. So for example, if `index.html` was inside a subfolder of `test-site` and `my-image.jpg` was inside `test-site`, you could reference `my-image.jpg` from `index.html` using `../my-image.jpg`.
  * 图片等资源在html文件的上一级目录，使用../filename.jpg
  
- You can combine these as much as you like, for example `../subdirectory/another-subdirectory/my-image.jpg`.
  * 可以使用../组合任意的子目录，实际上就是你在cmd窗口下使用cd命令切换目录的路线图。比如：
  
    > You can combine multiple instances of these features into complex URLs, if needed, for example: `../../../complex/path/to/my/file.html`

For now, this is about all you need to know.

**Note:** The Windows file system tends to use backslashes, not forward slashes, e.g. `C:\Windows`. This doesn't matter in HTML — even if you are developing your website on Windows, you should still use forward slashes in your code.

>### [Absolute versus relative URLs](https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/Creating_hyperlinks#absolute_versus_relative_urls) by MDN contributors is licensed under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/)
>
>Two terms you'll come across on the Web are **absolute URL** and **relative URL:**
>
>**absolute URL**: Points to a location defined by its absolute location on the web, including [protocol](https://developer.mozilla.org/en-US/docs/Glossary/Protocol) and [domain name](https://developer.mozilla.org/en-US/docs/Glossary/Domain_name). For example, if an `index.html` page is uploaded to a directory called `projects` that sits inside the **root** of a web server, and the website's domain is `https://www.example.com`, the page would be available at `https://www.example.com/projects/index.html` (or even just `https://www.example.com/projects/`, as most web servers just look for a landing page such as `index.html` to load if it isn't specified in the URL.)
>
>An absolute URL will always point to the same location, no matter where it's used.
>
>**relative URL**: Points to a location that is *relative* to the file you are linking from, more like what we looked at in the previous section. For example, if we wanted to link from our example file at `https://www.example.com/projects/index.html` to a PDF file in the same directory, the URL would just be the filename — `project-brief.pdf` — no extra information needed. If the PDF was available in a subdirectory inside `projects` called `pdfs`, the relative link would be `pdfs/project-brief.pdf` (the equivalent absolute URL would be `https://www.example.com/projects/pdfs/project-brief.pdf`.)
>
>A relative URL will point to different places depending on the actual location of the file you refer from — for example if we moved our `index.html` file out of the `projects` directory and into the **root** of the website (the top level, not in any directories), the `pdfs/project-brief.pdf` relative URL link inside it would now point to a file located at `https://www.example.com/pdfs/project-brief.pdf`, not a file located at `https://www.example.com/projects/pdfs/project-brief.pdf`.
>
>Of course, the location of the `project-brief.pdf` file and `pdfs` folder won't suddenly change because you moved the `index.html` file — this would make your link point to the wrong place, so it wouldn't work if clicked on. You need to be careful!
>
>
