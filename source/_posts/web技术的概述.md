---
title: web技术的概述
date: 2022-07-31 07:30:01
tags: 
  - web
  - html
  - http
  - css 
  - javascript 
categories: web 
cover:
thumbnail: 
---


>  [The web and web standards](https://developer.mozilla.org/en-US/docs/Learn/Getting_started_with_the_web/The_web_and_web_standards) by MDN contributors is licensed under [CC-BY-SA v2.5 ](https://creativecommons.org/licenses/by-sa/2.5/) 



## [Overview of modern web technologies](https://developer.mozilla.org/en-US/docs/Learn/Getting_started_with_the_web/The_web_and_web_standards#overview_of_modern_web_technologies)

There are a number of technologies to learn if you want to be a front-end web developer. In this section we will describe them briefly. For a more detailed explanation of how some of them work together, read our article [How the web works](https://developer.mozilla.org/en-US/docs/Learn/Getting_started_with_the_web/How_the_Web_works).

### [Browsers](https://developer.mozilla.org/en-US/docs/Learn/Getting_started_with_the_web/The_web_and_web_standards#browsers)

You are probably reading these words inside a web browser in this very moment (unless you've printed it out, or are using assistive technology, such as a screenreader to read it out to you). Web browsers are the software programs people use to consume the web, and include [Firefox](https://www.mozilla.org/en-US/firefox/), [Chrome](https://www.google.com/chrome/), [Opera](https://www.opera.com/), [Safari](https://www.apple.com/safari/), and [Edge](https://www.microsoft.com/en-us/edge).

### [HTTP](https://developer.mozilla.org/en-US/docs/Learn/Getting_started_with_the_web/The_web_and_web_standards#http)

Hypertext Transfer Protocol, or [HTTP](https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP), is a messaging protocol that allows web browsers to communicate with web servers (where web sites are stored). A typical conversation goes something like

```
"Hello web server. Can you give me the files I need to render bbc.co.uk"?

"Sure thing web browser — here you go"

[Downloads files and renders web page]
```

The actual syntax for HTTP messages (called requests and responses) is not that human-readable, but this gives you the basic idea.

### [HTML, CSS, and JavaScript](https://developer.mozilla.org/en-US/docs/Learn/Getting_started_with_the_web/The_web_and_web_standards#html_css_and_javascript)

[HTML](https://developer.mozilla.org/en-US/docs/Web/HTML), [CSS](https://developer.mozilla.org/en-US/docs/Web/CSS), and [JavaScript](https://developer.mozilla.org/en-US/docs/Web/JavaScript) are the main three technologies you'll use to build a website:

<!--more-->

- Hypertext markup language, or

   

  HTML, is a markup language consisting of different elements you can wrap (mark up) content in to give it meaning (semantics) and structure. Simple HTML looks like this:

  ```
<h1>This is a top-level heading</h1>
  
  <p>This is a paragraph of text.</p>
  
  <img src="cat.jpg" alt="A picture of my cat">
  ```
  
  Copy to Clipboard

  If we adopted a house-building analogy, HTML would be like the foundations and walls of the house, which give it structure and hold it together.

- Cascading Style Sheets (CSS) is a rule-based language used to apply styles to your HTML, for example setting text and background colors, adding borders, animating things, or laying out a page in a certain way. As a simple example, the following code would turn our HTML paragraph red:

  ```
  p {
    color: red;
  }
  ```
  
  Copy to Clipboard In the house analogy, CSS is like the paint, wallpaper, carpets and paintings you'd use to make the house look nice.
  
- JavaScript

   

  is the programming language we use to add interactivity to web sites, from dynamic style switching, to fetching updates from the server, right through to complex 3D graphics. The following simple JavaScript will store a reference to our paragraph in memory and change the text inside it:

  ```
  let pElem = document.querySelector('p');
  pElem.textContent =  'We changed the text!';
  ```

  Copy to Clipboard In the house analogy, JavaScript is like the cooker, TV, Microwave, or hairdryer — the things that give your house useful functionality
