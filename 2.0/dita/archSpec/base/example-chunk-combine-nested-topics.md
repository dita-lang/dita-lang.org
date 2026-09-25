---
author: OASIS DITA Technical Committee
---

# Example: How `chunk="combine"` effects the map hierarchy

Special attention is necessary when combining a nested map hierarchy that includes documents with their own nested topics.

Consider the following DITA map:

```
<map **chunk="combine"**>
  <title>Generation example</title>
  <topicref href="ancestor.dita">
    <topicref href="middle.dita">
      <topicref href="child.dita"/>
    </topicref>
  </topicref>
</map>

```

In this case, the `@chunk` attribute instructs a processor to treat the three topics as a single combined document, while preserving the original map hierarchy.

Now consider the following three source documents, each of which includes nested or peer topics: `ancestor.dita`, `middle.dita`, and `child.dita`.

```
**&lt;!-- ancestor.dita --&gt;**
<dita>
  <topic id="ancestor-first">
    <title>First major topic in ancestor composite document</title>
    <!-- ... Topic content ... -->
  </topic>
  <!-- More topics in ancestor composite document -->
  <topic id="ancestor-last">
    <title>Last major topic in ancestor composite doc</title>
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
    <!-- ... Body content, maybe more children topics -->
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

When `chunk="combine"` is evaluated, the three source documents are combined into one. Both the ancestor and middle documents have child topics that need to be taken into account:

-   `ancestor.dita` has a root `<dita>` element, with several root-level topics. After evaluating the `@chunk` attribute, content from `middle.dita` is placed after the topic with `id="ancestor-last-child"`in `ancestor.dita`.
-   `middle.dita` does not have a `<dita>` element, but it does have a nested topic, so content from `child.dita` is located after that nested topic.

In each case, the original map hierarchy is preserved.

The result of evaluating the `@chunk` attribute is equivalent to the following map and topic documents:

```
**&lt;!-- Root map --&gt;**
<map>
  <title>Generation example</title>
  <topicref href="input.dita"/>
</map>
```

```
**&lt;!-- input.dita --&gt;**
<dita>
  <topic id="ancestor-first">
    <title>First major topic in ancestor composite doc</title>
    <!-- ... Topic content ... -->
  </topic>
  <!-- More topics in ancestor composite doc -->
  <topic id="ancestor-last">
    <title>Last major topic in ancestor composite doc</title>
    <!-- ... Topic content ... -->
    <topic id="ancestor-last-child">
      <title>Child of last major topic in ancestor composite doc</title>
      <!-- ... Topic content ... -->
    </topic>
    **&lt;!-- Content of middle.dita combined here --&gt;**
    <topic id="middle-root">
      <title>Root topic in middle doc</title>
      <body><!-- ... --></body>
      <topic id="middle-child">
        <title>Child of root topic in middle doc</title>
        <!-- ... Body content, maybe more children topics ... -->
      </topic>
      **&lt;!-- Content of child.dita combined here --&gt;**
      <topic id="child">
        <title>Small child topic</title>
        <!-- ... Topic content ... -->
      </topic>
    </topic>
  </topic>
</dita>
```

**Parent topic:**[Examples of the chunk attribute](../../archSpec/base/examples-of-chunking.md)

