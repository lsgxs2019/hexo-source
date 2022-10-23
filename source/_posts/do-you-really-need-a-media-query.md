---
title: do you really need a media query?
date: 2022-08-23 11:16:06
tags: 
  - css  
    
categories: web 
---

> [do you really need a media query]([Beginner's guide to media queries - Learn web development | MDN (mozilla.org)](https://developer.mozilla.org/en-US/docs/Learn/CSS/CSS_layout/Media_queries))  is licensed under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/)

#### Do you really need a media query?

## [Do you really need a media query?](https://developer.mozilla.org/en-US/docs/Learn/CSS/CSS_layout/Media_queries#do_you_really_need_a_media_query)

Flexbox, Grid, and multi-column layout all give you ways to create flexible and even responsive components without the need for a media query. It's always worth considering whether these layout methods can achieve what you want without adding media queries. For example, you might want a set of cards that are at least 200 pixels wide, with as many of these 200 pixels as will fit into the main article. This can be achieved with grid layout, using no media queries at all.

<!--more-->

This could be achieved using the following:

```
<ul class="grid">
    <li>
        <h2>Card 1</h2>
        <p>…</p>
    </li>
    <li>
        <h2>Card 2</h2>
        <p>…</p>
    </li>
    <li>
        <h2>Card 3</h2>
        <p>…</p>
    </li>
    <li>
        <h2>Card 4</h2>
        <p>…</p>
    </li>
    <li>
        <h2>Card 5</h2>
        <p>…</p>
    </li>
</ul>
```

Copy to Clipboard

```
.grid {
    list-style: none;
    margin: 0;
    padding: 0;
    display: grid;
    gap: 20px;
    grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
}

.grid li {
    border: 1px solid #666;
    padding: 10px;
}
```



[Open the grid layout example](https://mdn.github.io/css-examples/learn/media-queries/grid.html) in the browser, or [view the source](https://github.com/mdn/css-examples/blob/main/learn/media-queries/grid.html).

With the example open in your browser, make the screen wider and narrower to see the number of column tracks change. The nice thing about this method is that grid is not looking at the viewport width, but the width it has available for this component. It might seem strange to wrap up a section about media queries with a suggestion that you might not need one at all! However, in practice you will find that good use of modern layout methods, enhanced with media queries, will give the best results.

You could use the starting point that we have created to test out more media queries. For example, perhaps you could change the size of the navigation if you detect that the visitor has a coarse pointer, using the `pointer` media feature.

You could also experiment with adding different components and seeing whether the addition of a media query, or using a layout method like flexbox or grid is the most appropriate way to make the components responsive. Very often there is no right or wrong way — you should experiment and see which works best for your design and content.
