---
author: OASIS DITA Technical Committee
---

# Example: Reusing a sequence of elements of different types

In this scenario, a `@conref` and `@conrefend` are used to reference a range of block elements that do not have the same element type.

In the following code sample, we have a library topic that defines several elements, including paragraphs and lists. Each block element has an `@id` attribute, making it possible to reuse them individually or as ranges.

```
<topic id="x">
  <title>Library file topic.dita</title>
  <body>
    <p id="p1">First para</p>
    <ol id="mylist">
      <li id="apple">A</li>
      <li id="bear">B</li>
      <li id="cat">C</li>
      <li id="dog">D</li>
      <li id="eel">E</li>
    </ol>
    <p id="p2">Second para</p>
  </body>
</topic>
```

In the following sample, the referencing element is a paragraph. It references a starting paragraph and an ending paragraph, which defines a range that includes those paragraphs along with everything that falls between them.

```
<topic id="y">
  <title>Sample file reusing content</title>
  <body>
    <p conref="topic.dita#x/p1" conrefend="topic.dita#x/p2"/>
  </body>
</topic>
```

In the resolved topic, all list items from the starting paragraph to the ending paragraph are pulled in to replace the referencing element. The `@id` attributes on the referenced elements are not preserved, but any `@id` attributes on intermediate elements are preserved.

```
<topic id="y">
  <title>Sample file reusing content</title>
  <body>
    <p>First para</p>
    <ol id="mylist">
      <li id="apple">A</li>
      <li id="bear">B</li>
      <li id="cat">C</li>
      <li id="dog">D</li>
      <li id="eel">E</li>
    </ol>
    <p>Second para</p>
  </body>
</topic>
```

**Parent topic:**[Examples of content referencing](../../archSpec/base/examples-conref.md)

