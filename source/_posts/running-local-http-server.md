---
title: running local http server
date: 2022-07-24 08:47:21
tags:  
  - http
  - html
  - localhost 
categories: html
thumbnail: /images/local-http-server.png
---

> [How do you set up a local testing server](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/set_up_a_local_testing_server#running_a_simple_local_http_server)  by MDN contributors is  licensed under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/)



This article explains how to set up a simple local testing server on your machine, and the basics of how to use it.

| Prerequisites: | You need to first know [how the Internet works](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/How_does_the_Internet_work), and [what a Web server is](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/What_is_a_web_server). |
| :------------- | ------------------------------------------------------------ |
| Objective:     | You will learn how to set up a local testing server.         |

<!--more-->

## [Local files vs. remote files](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/set_up_a_local_testing_server#local_files_vs._remote_files)

Throughout most of the learning area, we tell you to just open your examples directly in a browser — this can be done by double clicking the HTML file, dragging and dropping it into the browser window, or choosing *File* > *Open…* and navigating to the HTML file. There are many ways to achieve this.

If the web address path starts with `file://` followed by the path to the file on your local hard drive, a local file is being used. In contrast, if you view one of our examples hosted on GitHub (or an example on some other remote server), the web address will start with `http://` or `https://`, to show that the file has been received via HTTP.

## [The problem with testing local files](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/set_up_a_local_testing_server#the_problem_with_testing_local_files)

Some examples won't run if you open them as local files. This can be due to a variety of reasons, the most likely being:

- **They feature asynchronous requests**. Some browsers (including Chrome) will not run async requests (see [Fetching data from the server](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Client-side_web_APIs/Fetching_data)) if you just run the example from a local file. This is because of security restrictions (for more on web security, read [Website security](https://developer.mozilla.org/en-US/docs/Learn/Server-side/First_steps/Website_security)).
- **They feature a server-side language**. Server-side languages (such as PHP or Python) require a special server to interpret the code and deliver the results.
- **They include other files**. Browsers commonly treat requests to load resources using the `file://` schema as cross-origin requests. So if you load a local file that includes other local files, this may trigger a [CORS](https://developer.mozilla.org/en-US/docs/Glossary/CORS) error.

## [Running a simple local HTTP server](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/set_up_a_local_testing_server#running_a_simple_local_http_server)

To get around the problem of async requests, we need to test such examples by running them through a local web server. One of the easiest ways to do this for our purposes is to use Python's `http.server` module.

**Note:** Older versions of Python (up to version 2.7) provided a similar module named `SimpleHTTPServer`. If you are using Python 2.x, you can follow this guide by replacing all uses of `http.server` with `SimpleHTTPServer`. However, we recommend you use the latest version of Python.

To do this:

1. Install Python. If you are using Linux or macOS, it should be available on your system already. If you are a Windows user, you can get an installer from the Python homepage and follow the instructions to install it:

   - Go to [python.org](https://www.python.org/)
   - Under the Download section, click the link for Python "3.xxx".
   - At the bottom of the page, click the *Windows Installer* link to download the installer file.
   - When it has downloaded, run it.
   - On the first installer page, make sure you check the "Add Python 3.xxx to PATH" checkbox.
   - Click *Install*, then click *Close* when the installation has finished.

2. Open your command prompt (Windows) / terminal (macOS/ Linux). To check if Python is installed, enter the following command:

   ```
   python -V
   # If the above fails, try:
   python3 -V
   # Or, if the "py" command is available, try:
   py -V
   ```

   Copy to Clipboard

3. This should return a version number. If this is OK, navigate to the directory that your example is inside, using the

    

   ```
   cd
   ```

    

   command.

   ```
   # include the directory name to enter it, for example
   cd Desktop
   # use two dots to jump up one directory level if you need to
   cd ..
   ```

   Copy to Clipboard

4. Enter the command to start up the server in that directory:

   ```
   # If Python version returned above is 3.X
   # On Windows, try "python -m http.server" or "py -3 -m http.server"
   python3 -m http.server
   # If Python version returned above is 2.X
   python -m SimpleHTTPServer
   ```

   Copy to Clipboard

5. By default, this will run the contents of the directory on a local web server, on port 8000. You can go to this server by going to the URL `localhost:8000` in your web browser. Here you'll see the contents of the directory listed — click the HTML file you want to run.

**Note:** If you already have something running on port 8000, you can choose another port by running the server command followed by an alternative port number, e.g. `python3 -m http.server 7800` (Python 3.x) or `python -m SimpleHTTPServer 7800` (Python 2.x). You can then access your content at `localhost:7800`.

## [Running server-side languages locally](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/set_up_a_local_testing_server#running_server-side_languages_locally)

Python's `http.server` (or `SimpleHTTPServer` for Python 2) module is useful, but it is merely a *static* file server; it doesn't know how to run code written in languages such as Python, PHP or JavaScript. To handle them, you'll need something more — exactly what you'll need depends on the server-side language you are trying to run. Here are a few examples:

- To run Python server-side code, you'll need to use a Python web framework. There are many popular Python web frameworks, such as Django (a [guide](https://developer.mozilla.org/en-US/docs/Learn/Server-side/Django) is available), [Flask](https://flask.palletsprojects.com/), and [Pyramid](https://trypyramid.com/).

- To run Node.js (JavaScript) server-side code, you'll need to use raw node or a framework built on top of it. Express is a good choice — see [Express Web Framework (Node.js/JavaScript)](https://developer.mozilla.org/en-US/docs/Learn/Server-side/Express_Nodejs).

- To run PHP server-side code, launch

   

  PHP's built-in development server

  :

  ```
  $ cd path/to/your/php/code
  $ php -S localhost:8000
  ```
