---
author: OASIS DITA Technical Committee
---

# Example: Simple table with accessibility markup

In this scenario, the topic author uses a header row and the `@keycol` attribute to ensure that the table is accessible.

In the following code sample, the `<sthead>` element identifies the header row, and `@keycol` attribute identifies the header column:

```
<simpletable frame="all" relcolwidth="1* 1*" **keycol="1"**>
  **&lt;sthead&gt;
    &lt;stentry&gt;Type of room&lt;/stentry&gt;
    &lt;stentry&gt;Price per day&lt;/stentry&gt;
  &lt;/sthead&gt;**
  <strow>
    <stentry>Single bed</stentry>
    <stentry>$125.00</stentry>
  </strow>
  <strow>
    <stentry>Two double beds</stentry>
    <stentry>$150.00</stentry>
  </strow>
  <strow>
    <stentry>Queen or king bed</stentry>
    <stentry>$165.00</stentry>
  </strow>
</simpletable>
```

This table might be rendered in the following way:

![The table includes a header row at the top which is shaded light green, with the first column labeled "Type of room" and the second column labeled "Price per night". The first column functions as a header column, with all three entries bolded. The entries are "Single bed", "Two double beds", and "Queen or king bed". The second column has the prices for these rooms. The first row after the header indicates that a room with a single bed is $125, the next row indicates that a room with two double beds is $150, and the final row indicates that a room with a queen or king bed is $165.](../../images/simple-table-accessibility.jpg)

**Parent topic:**[Examples of DITA markup for accessibility](../../archSpec/base/examples-of-dita-markup-for-accessibility.md)

