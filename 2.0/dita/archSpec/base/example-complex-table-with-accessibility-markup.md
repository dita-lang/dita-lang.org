---
author: OASIS DITA Technical Committee
---

# Example: Complex table with accessibility markup

In the following code sample, the table uses the `<thead>` element to identify header rows and the `@rowheader` attribute to identify a header column. These header relationships can be used to automatically create renderings of the table in other formats, such as HTML, that can be navigated using a screen reader or other assistive technology.

```
<table frame="all" rowheader="firstcol">
  <title>Sample of automated table accessibility</title>
  <desc>Names are listed in the column c1. Points are listed in both data columns, with
        expected points in column c2 and actual points in column c3.</desc>
  <tgroup cols="3">
    <colspec colname="c1"/>
    <colspec colname="c2"/>
    <colspec colname="c3"/>
    <thead>
      <row>
        <entry morerows="1">Name</entry>
        <entry namest="c2" nameend="c3">Points</entry>
      </row>
      <row>
        <entry>Expected</entry>
        <entry>Actual</entry>
      </row>
    </thead>
    <tbody>
      <row>
        <entry>Mark</entry>
        <entry>10,000</entry>
        <entry>11,123.45</entry>
      </row>
      <row>
        <entry>Peter</entry>
        <entry>9,000</entry>
        <entry>11,012.34</entry>
      </row>
      <row>
        <entry>Cindy</entry>
        <entry>10,000</entry>
        <entry>10,987.64</entry>
      </row>
     </tbody>
   </tgroup>
</table>
```

In this code sample, navigation information for assistive technology is derived from two sources:

-   The `<thead>` element contains two rows, and indicates that each entry in those header rows is a header cell for that column. This means that each body cell can be associated with the header cell or cells above the column. For example, in the second body row, the entry "Peter" is associated with the header "Name"; similarly, the entry "9,000" is associated with the headers "Expected" and "Points".
-   The `@rowheader` attribute that is specified on `<table>` indicates that the first column plays a role as a row header. This means that the header cell in column one is associated with the other body cells in the same row. For example, in the second body row, the entry "9,000" is associated with the header "Peter".

As a result of these two sets of headers, a rendering of the table associates the entry "9,000" with three headers: "Peter", "Expected", and "Points", thus making it fully navigable by a screen reader or other assistive technology. When the user navigates to the cell containing "9,000", it can report the headers "Peter", "Expected", and "Points" as the headers for that cell.

The output might be rendered in the following way:

![The image shows a three-column table. The first column lists names, the second column lists expected points, and the third column lists actual points. There are two header rows that contains spans. The header row is shaded with green, and the text in the header column and rows is bold. The edges of the screen capture are tattered, to indicate that the image is part of a larger document.](../../langRef/images/table-with-spans.jpg)

The rendered HTML used by a screen reader might look as follows.

```
<table>
  <caption>
    <span>Sample of automated table accessibility</span>
    <span class="desc">Names are listed in the column c1. Points are listed in both data columns, 
      with expected points in column c2 and actual points in column c3.</span>
  </caption>
  <colgroup><col><col><col></colgroup>
  <thead>
    <tr>
      <th id="source__entry__1" rowspan="2">Name</th>
      <th id="source__entry__2" colspan="2">Points</th>
    </tr>
    <tr>
      <th id="source__entry__3">Expected</th>
      <th id="source__entry__4">Actual</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row" id="source__entry__5" headers="source__entry__1">Mark</th>
      <td headers="source__entry__5 source__entry__2 source__entry__3">10,000</td>
      <td headers="source__entry__5 source__entry__2 source__entry__4">11,123.45</td>
    </tr>
    <tr>
      <th scope="row" id="source__entry__8" headers="source__entry__1">Peter</th>
      <td headers="source__entry__8 source__entry__2 source__entry__3">9,000</td>
      <td headers="source__entry__8 source__entry__2 source__entry__4">11,012.34</td>
    </tr>
    <tr>
      <th scope="row" id="source__entry__11" headers="source__entry__1">Cindy</th>
      <td headers="source__entry__11 source__entry__2 source__entry__3">10,000</td>
      <td headers="source__entry__11 source__entry__2 source__entry__4">10,987.64</td>
    </tr>
  </tbody>
</table>
```

**Parent topic:**[Examples of DITA markup for accessibility](../../archSpec/base/examples-of-dita-markup-for-accessibility.md)

