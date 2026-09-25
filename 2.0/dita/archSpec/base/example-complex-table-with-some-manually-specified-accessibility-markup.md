---
author: OASIS DITA Technical Committee
---

# Example: Complex table with some manually-specified accessibility markup

In some complex tables, the `<thead>` element and `@rowheader` attribute might not be enough to support all accessibility needs. Assume that a table is designed so that names are listed across the top row, instead of in the first column, with both the first and second columns also functioning as headers:

![The image shows a five-column table, in which the header information for the cells is contained in the first two columns: expected and actual points. The header row is shaded with green, and the text in the header column and rows is bold. The edges of the screen capture are tattered, to indicate that the image is part of a larger document.](../../langRef/images/table-with-header-columns.jpg)

**Note:** The table in this example is not meant to illustrate a best practice; this specific example would likely prove difficult to navigate using a screen reader even with proper header markup. This example is only intended to illustrate the full range of manual accessibility markup that is available should the need arise.

Here, the `@rowheader` attribute cannot be used, because it is only able to specify the first column as a header column. In this case, the `@scope` attribute can be used to indicate that entries in the first and second columns function as headers for the entire row \(or row group, in the case of a cell that spans more than one row\).

The following code sample demonstrates the use of the `@scope` attribute to facilitate navigation of these rows by a screen reader or other assistive technology. Note that the `<thead>` element is still used to imply a header relationship with the names at the top of each column.

```
<table frame="all">
 <title>Sample with two header columns</title>
 <tgroup cols="5">
  <colspec colname="c1"/>
  <colspec colname="c2"/>
  <colspec colname="c3"/>
  <colspec colname="c4"/>
  <colspec colname="c5"/>
  <thead>
   <row>
    <entry namest="c1" nameend="c2">Name</entry>
    <entry>Mark</entry>
    <entry>Peter</entry>
    <entry>Cindy</entry>
   </row>
  </thead>
  <tbody>
   <row>
    <entry morerows="1" **scope="rowgroup"**><b>Points</b></entry>
    <entry **scope="row"**><b>Expected</b></entry>
    <entry>10,000</entry>
    <entry>9,000</entry>
    <entry>10,000</entry>
   </row>
   <row>
    <entry **scope="row"**><b>Actual</b></entry>
    <entry>11,123.45</entry>
    <entry>11,012.34</entry>
    <entry>10,987.64</entry>
   </row>
  </tbody>
 </tgroup>
</table>
```

The rendered HTML used by a screen reader might look as follows.

```
<table>
  <caption>Sample with two header columns</caption>
  <colgroup><col><col><col><col><col></colgroup>
  <thead>
    <tr>
      <th id="source__entry__1" colspan="2">Name</th>
      <th id="source__entry__2">Mark</th>
      <th id="source__entry__3">Peter</th>
      <th id="source__entry__4">Cindy</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th headers="source__entry__1" rowspan="2" scope="rowgroup"><strong class="ph b">Points</strong></th>
      <th headers="source__entry__1" scope="row"><strong class="ph b">Expected</strong></th>
      <td headers="source__entry__2">10,000</td>
      <td headers="source__entry__3">9,000</td>
      <td headers="source__entry__4">10,000</td>
    </tr>
    <tr>
      <th headers="source__entry__1" scope="row"><strong class="ph b">Actual</strong></th>
      <td headers="source__entry__2">11,123.45</td>
      <td headers="source__entry__3">11,012.34</td>
      <td headers="source__entry__4">10,987.64</td>
    </tr>
  </tbody>
</table>
```

**Parent topic:**[Examples of DITA markup for accessibility](../../archSpec/base/examples-of-dita-markup-for-accessibility.md)

