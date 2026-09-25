---
author: OASIS DITA Technical Committee
---

# Example: Reusing a sequence of list items

In this scenario, a `@conref` and `@conrefend` are used to reference a range of list items.

In the following code sample, we have a library topic that defines a series of list items. Each list item has an `@id` attribute, making it possible to reuse them individually or as ranges.

```
<topic id="x">
  <title>Sample file topic.dita</title>
  <body>
    <ol id="list">
      <li id="apple">A</li>
      <li id="bear">B</li>
      <li id="cat">C</li>
      <li id="dog">D</li>
      <li id="eel">E</li>
    </ol>
  </body>
</topic>
```

The following topic reuses a range of items from that list, without reusing the entire list.

```
<topic id="y">
  <title>Sample file reusing content</title>
  <body>
    <ol>
      <li>My own first item</li>
      <li conref="topic.dita#x/bear" conrefend="topic.dita#x/dog"/>
      <li>And a different final item</li>
    </ol>
  </body>
</topic>
```

In the resolved topic, all list items from the starting "bear" to the ending "dog" are pulled in to replace the referencing element. The `@id` attributes on the referenced elements are not preserved, but any `@id` attributes on intermediate elements are preserved.

```
<topic id="y">
  <title>Sample file reusing content</title>
  <body>
    <ol>
      <li>My own first item</li>
      <li>B</li>
      <li id="cat">C</li>
      <li>D</li>
      <li>And a different final item</li>
    </ol>
  </body>
</topic>
```

**Parent topic:**[Examples of content referencing](../../archSpec/base/examples-conref.md)

