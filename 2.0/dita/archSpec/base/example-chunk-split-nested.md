---
author: OASIS DITA Technical Committee
---

# Example: How `chunk="split"` affects the map hierarchy

Special attention is necessary when evaluating the map hierarchy that results from splitting documents that contain nested topics.

Consider the following DITA map:

```
<map **chunk="split"**>
  <title>Generation example</title>
  <topicref href="ancestor.dita">
    <topicref href="middle.dita">
      <topicref href="child.dita"/>
    </topicref>
  </topicref>
</map>

```

Here, the `@chunk` attribute instructs a processor to render every topic in each of the three documents as its own document, while preserving any hierarchy from those documents.

Now consider the following three topic documents, each of which includes nested or peer topics:

```
**&lt;!-- ancestor.dita --&gt;**
<dita>
  <topic id="ancestor-first">
    <title>First major topic in ancestor composite document</title>
    <!-- ... Topic content ... -->
  </topic>
  <!-- More topics in ancestor composite document -->
  <topic id="ancestor-last">
    <title>Last major topic in ancestor composite document</title>
    <!-- ... Topic content ... -->
    <topic id="ancestor-last-child">
      <title>Child of last major topic in ancestor composite document</title>
      <!-- ... Topic content ... -->
    </topic>
  </topic>
</dita>
```

```
**&lt;!-- middle.dita --&gt;**
<topic id="middle-root">
  <title>Root topic in middle document</title>
  <body>
    <!-- ... -->
  </body>
  <topic id="middle-child">
    <title>Child of root topic in middle document</title>
    <!-- ... Body content, maybe more children topics ... -->
  </topic>
</topic>
```

```
**&lt;!-- child.dita --&gt;**
<topic id="child">
  <title>Small child topic</title>
  <!-- ... Topic content ... -->
</topic>
```

When `chunk="split"` is evaluated, both `ancestor.dita` and `middle.dita` are split and treated as multiple topic documents. `child.dita` is only a single topic and has nothing to split.

The following list addresses how the split operation effects the map hierarchy:

-   `ancestor.dita` has a root `<dita>` element, so it results in multiple peer topic references \(or branches\) in the map. Topic references that were nested within the original reference to `ancestor.dita` are now located within the reference to "ancestor-last" \(the last topic child of the `<dita>` element\).
-   `middle.dita` has nested topics, so it results in its own new hierarchy within the map. Content from the nested topic reference is now located within the reference to the root topic from `middle.dita`, but after any references to child topics.

The result of evaluating the `@chunk` attribute is equivalent to the following DITA map:

```
<map chunk="split">
  <title>Generation example</title>
  <topicref href="ancestor-first.dita"/>
  <!-- More topics in ancestor composite document -->
  <topicref href="ancestor-last.dita">
    <topicref href="ancestor-last-child.dita"/>
    <!-- middle.dita now located here, as final child of
         final topic child of <dita> in ancestor.dita -->
    <topicref href="middle-root.dita">
      <topicref href="middle-child.dita"/>
      <!-- child.dita now located here, as final topic of
           child root topic in middle.dita ancestor.dita -->
      <topicref href="child.dita"/>
    </topicref>
  </topicref>
</map>

```

**Parent topic:**[Examples of the chunk attribute](../../archSpec/base/examples-of-chunking.md)

