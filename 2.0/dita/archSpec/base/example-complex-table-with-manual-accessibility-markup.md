---
author: OASIS DITA Technical Committee
---

# Example: Complex table with manual accessibility markup

In extremely complex tables, such as those with a single header cell in the middle of the table, fine-grained accessibility controls are available to explicitly associate any content cell with any header cell. This might also be useful for cases where processors do not support implied accessibility relationships that exist based on header markup such as `<thead>`.

In the following sample, header cells are identified using the `@id` attribute, which is referenced using the `@headers` attribute on appropriate content cells. This makes all header relationships in the table explicit. Note that this sample ignores the `@scope` attribute, which could be used to exercise manual control without setting as many attribute values; it also ignores the fact that `<thead>` creates a header relationship even when the `@id` and `@headers` attributes are not used.

```
<table frame="all">
  <title>Sample with fully manual accessibility control</title>
<desc>Names are listed in the column c1. Points are listed in both data columns, with
expected points in column c2 and actual points in column c3.</desc>
  <tgroup cols="3">
    <colspec colname="c1"/>
    <colspec colname="c2"/>
    <colspec colname="c3"/>
    <thead>
      <row>
        <entry morerows="1"> </entry>
        <entry namest="c2" nameend="c3" **id="pts"**>Points</entry>
      </row>
      <row>
        <entry **id="exp" headers="pts"**>Expected</entry>
        <entry **id="act" headers="pts"**>Actual</entry>
      </row>
    </thead>
    <tbody>
      <row>
        <entry **id="name1"**>Mark</entry>
        <entry **headers="name1 exp pts"**>10,000</entry>
        <entry **headers="name1 act pts"**>11,123.45</entry>
      </row>
      <row>
        <entry **id="name2"**>Peter</entry>
        <entry **headers="name2 exp pts"**>9,000</entry>
        <entry **headers="name2 act pts"**>11,012.34</entry>
      </row>
      <row>
        <entry **id="name3"**>Cindy</entry>
        <entry **headers="name3 exp pts"**>10,000</entry>
        <entry **headers="name3 act pts"**>10,987.64</entry>
      </row>
     </tbody>
   </tgroup>
</table>
```

The output might be rendered in the following way:

![The image shows a three-column table. The first column lists names, the second column lists expected points, and the third column lists actual points. There are two header rows that contains spans. The header row is shaded with green, and the text in the header column and rows is bold. The edges of the screen capture are tattered, to indicate that the image is part of a larger document.](../../langRef/images/table-manual-accessibility.jpg)

The rendered HTML used by a screen reader might look as follows.

```
<table>
  <caption>Sample with fully manual accessibility control
           <span class="desc">Names are listed in the column c1. Points are listed in both data columns, with
                expected points in column c2 and actual points in column c3.</span></caption>
  <colgroup><col><col><col></colgroup>
  <thead>
    <tr>
      <th id="entry__1" rowspan="2"> </th>
      <th id="pts" colspan="2">Points</th>
    </tr>
    <tr>
      <th id="exp" headers="pts">Expected</th>
      <th id="act" headers="pts">Actual</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td id="name1" headers="entry__1">Mark</td>
      <td headers="name1 pts exp">10,000</td>
      <td headers="name1 pts act">11,123.45</td>
    </tr>
    <tr>
      <td id="name2" headers="entry__1">Peter</td>
      <td headers="name2 pts exp">9,000</td>
      <td headers="name2 pts act">11,012.34</td>
    </tr>
    <tr>
      <td id="name3" headers="entry__1">Cindy</td>
      <td headers="name3 pts exp">10,000</td>
      <td headers="name3 pts act">10,987.64</td>
    </tr>
  </tbody>
</table>
```

**Parent topic:**[Examples of DITA markup for accessibility](../../archSpec/base/examples-of-dita-markup-for-accessibility.md)

