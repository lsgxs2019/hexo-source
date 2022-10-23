---
title: colgroup and col
date: 2022-08-02 17:37:20
tags:
  - html
categories: html
  
---

>  [HTML table basics](https://developer.mozilla.org/en-US/docs/Learn/HTML/Tables/Basics) by MDN contributors is licensed  under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/)

### [Active learning: colgroup and col](https://developer.mozilla.org/en-US/docs/Learn/HTML/Tables/Basics#active_learning_colgroup_and_col)

Now it's time to have a go yourself.

Below you can see the timetable of a languages teacher. On Friday she has a new class teaching Dutch all day, but she also teaches German for a few periods on Tuesday and Thursdays. She wants to highlight the columns containing the days she is teaching.

<iframe width="100%" height="320" src="https://mdn.github.io/learning-area/html/tables/basic/timetable-fixed.html" loading="lazy" style="box-sizing: border-box; border: 1px solid var(--border-primary); max-width: 100%; width: 765.719px; background: rgb(255, 255, 255); border-radius: var(--elem-radius);"></iframe>

<!--more-->

Recreate the table by following the steps below.

1. First, make a local copy of our [timetable.html](https://github.com/mdn/learning-area/blob/main/html/tables/basic/timetable.html) file in a new directory on your local machine. The HTML contains the same table you saw above, minus the column styling information.
2. Add a `<colgroup>` element at the top of the table, just underneath the `<table>` tag, in which you can add your `<col>` elements (see the remaining steps below).
3. The first two columns need to be left unstyled.
4. Add a background color to the third column. The value for your `style` attribute is `background-color:#97DB9A;`
5. Set a separate width on the fourth column. The value for your `style` attribute is `width: 42px;`
6. Add a background color to the fifth column. The value for your `style` attribute is `background-color: #97DB9A;`
7. Add a different background color plus a border to the sixth column, to signify that this is a special day and she's teaching a new class. The values for your `style` attribute are `background-color:#DCC48E; border:4px solid #C1437A;`
8. The last two days are free days, so just set them to no background color but a set width; the value for the `style` attribute is `width: 42px;`

See how you get on with the example. If you get stuck, or want to check your work, you can find our version on GitHub as [timetable-fixed.html](https://github.com/mdn/learning-area/blob/main/html/tables/basic/timetable-fixed.html) ([see it live also](https://mdn.github.io/learning-area/html/tables/basic/timetable-fixed.html)).

```
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>School timetable</title>
    <style>
    html {
      font-family: sans-serif;
    }

    table {
      border-collapse: collapse;
      border: 2px solid rgb(200,200,200);
      letter-spacing: 1px;
      font-size: 0.8rem;
    }

    td, th {
      border: 1px solid rgb(190,190,190);
      padding: 10px 20px;
    }

    td {
      text-align: center;
    }

    caption {
      padding: 10px;
    }
    </style>
  </head>
  <body>
    <h1>School timetable</h1>

    <table>
      <colgroup>
        <col span="2">
        <col style="background-color:#97DB9A;">
        <col style="width:42px;">
        <col style="background-color:#97DB9A;">
        <col style="background-color:#DCC48E; border:4px solid #C1437A;">
        <col span="2" style="width:42px;">
      </colgroup>
      <tr>
        <td>&nbsp;</td>
        <th>Mon</th>
        <th>Tues</th>
        <th>Wed</th>
        <th>Thurs</th>
        <th>Fri</th>
        <th>Sat</th>
        <th>Sun</th>
      </tr>
      <tr>
        <th>1st period</th>
        <td>English</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>German</td>
        <td>Dutch</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <th>2nd period</th>
        <td>English</td>
        <td>English</td>
        <td>&nbsp;</td>
        <td>German</td>
        <td>Dutch</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <th>3rd period</th>
        <td>&nbsp;</td>
        <td>German</td>
        <td>&nbsp;</td>
        <td>German</td>
        <td>Dutch</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <th>4th period</th>
        <td>&nbsp;</td>
        <td>English</td>
        <td>&nbsp;</td>
        <td>English</td>
        <td>Dutch</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table>


  </body>
</html>
```

