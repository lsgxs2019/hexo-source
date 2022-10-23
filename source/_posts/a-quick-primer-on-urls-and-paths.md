---
title: a quick primer on urls and paths
date: 2022-09-18 10:28:42
tags:
  - html
  - URL
  - path  
categories: html
---

[ A quick primer on URLs and Paths](https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/Creating_hyperlinks#a_quick_primer_on_urls_and_paths) by  MDN contributors is  licensed under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/)

>  A quick primer on URLs and Paths



To fully understand link targets, you need to understand URLs and file paths. This section gives you the information you need to achieve this.

A URL, or Uniform Resource Locator is a string of text that defines where something is located on the Web. For example, Mozilla's English homepage is located at `https://www.mozilla.org/en-US/`.

URLs use paths to find files. Paths specify where the file you're interested in is located in the filesystem. Let's look at an example of a directory structure, see the [creating-hyperlinks](https://github.com/mdn/learning-area/tree/main/html/introduction-to-html/creating-hyperlinks) directory.

![A simple directory structure. The parent directory is called creating-hyperlinks and contains two files called index.html and contacts.html, and two directories called projects and pdfs, which contain an index.html and a project-brief.pdf file, respectively](https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/Creating_hyperlinks/simple-directory.png)

The **root** of this directory structure is called `creating-hyperlinks`. When working locally with a website, you'll have one directory that contains the entire site. Inside the **root**, we have an `index.html` file and a `contacts.html`. In a real website, `index.html` would be our home page or landing page (a web page that serves as the entry point for a website or a particular section of a website.).

There are also two directories inside our root — `pdfs` and `projects`. These each have a single file inside them — a PDF (`project-brief.pdf`) and an `index.html` file, respectively. Note that you can have two `index.html` files in one project, as long as they're in different filesystem locations. The second `index.html` would perhaps be the main landing page for project-related information.

- Same directory  : If you wanted to include a hyperlink inside   index.html  (the top level 
  index.html  ) pointing to   contacts.html  , you would specify the filename that you want to link to, because it's in the same directory as the current file. The URL you would use is
  contacts.html  :
  ```
  <p>
    Want to contact a specific staff member? Find details on our
    <a href="contacts.html">contacts page</a>.
  </p>
  ```


- Moving down into subdirectories: If you wanted to include a hyperlink inside index.html(the top level

  index.html) pointing to projects/index.html, you would need to go down into the projects directory before indicating the file you want to link to. This is done by specifying the directory's name, then a forward slash, then the name of the file. The URL you would use is projects/index.html:

  ```
  <p>Visit my <a href="projects/index.html">project homepage</a>.</p>
  ```

- Moving back up into parent directories: If you wanted to include a hyperlink inside projects/index.html pointing to pdfs/project-brief.pdf, you'd have to go up a directory level, then back down into the  pdf

   directory. To go up a directory, use two dots —.. — so the URL you would use is  ../pdfs/project-rief.pdf:

   ```
       <p>A link to my <a href="../pdfs/project-brief.pdf">project           brief</a>.  
       </p>
   ```

**Note:** You can combine multiple instances of these features into complex URLs, if needed, for example: `../../../complex/path/to/my/file.html`.

