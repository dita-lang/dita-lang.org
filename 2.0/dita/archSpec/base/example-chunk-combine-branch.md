---
author: OASIS DITA Technical Committee
---

# Example: Using `@chunk` to render a single document from one or more branches

When a publishing system typically would render each topic document as an independent result document, the `@chunk` attribute can be used to render individual branches of a map as single documents.

Consider the following DITA map:

```
<map>
  <title>Lesson plan</title>
  <topicref href="goals.dita">
    &lt;!-- More topic references to goal topics --&gt;
  </topicref>
  <topicref href="firstLesson.dita">
    &lt;!-- More topic references to first lesson topics --&gt;
  </topicref>
  <topicref href="nextLesson.dita">
    &lt;!-- More topic references to second lesson topics --&gt;
  </topicref>
  &lt;!-- More map branches --&gt;
</map>
```

The following code samples show the content of `firstLesson.dita` and `nextLesson.dita`:

```
**&lt;!-- firstLesson.dita --&gt;**
<task id="firstLesson">
  <title>Starting to work with scissors</title>
  <shortdesc>This lesson will teach ... </shortdesc>
  <taskbody>
    <!-- ... -->
  </taskbody>
</task>
```

```
**&lt;!-- nextLesson.dita --&gt;**
<task id="nextLesson">
  <title>Advanced cutting</title>
  <shortdesc>This lesson will introduce complex shapes ... </shortdesc>
  <taskbody>
    <!-- ... -->
  </taskbody>
</task>
```

For many systems or output formats, each document in the map is typicallyrendered as an independent document. For example, rendering this map as HTML5 might result in `goals.html`, `firstLesson.html`, and `nextLesson.html`, while the child documents within each branch would each result in their own HTML files.

When output requirements demand that portions of the map be combined into a single document, specifying `chunk="combine"` on a map branch instructs a processor to render one document that combines all topics in that branch.

In the following code sample, `chunk="combine"` is specified on the map branches for the lessons. This indicates that each lesson branch should rendered as a single result document. Topics in the first branch with `goals.dita` will not be affected.

```
<map>
  <title>Lesson plan</title>
  <topicref href="goals.dita">
    &lt;!-- More topic references to goal topics --&gt;
  </topicref>
  <topicref href="firstLesson.dita" **chunk="combine"**>
    &lt;!-- More topic references to first lesson topics --&gt;
  </topicref>
  <topicref href="nextLesson.dita">
    &lt;!-- More topic references to second lesson topics --&gt;
  </topicref>
  &lt;!-- More map branches --&gt;
</map>
```

The result of evaluating this `@chunk` attribute is equivalent to the following map and topic documents:

```
**&lt;!-- Root map --&gt;**
<map>
  <title>Lesson plan</title>
  <topicref href="goals.dita">
    &lt;!-- More topic references to goal topics --&gt;
  </topicref>
  <topicref href="firstLesson.dita"/>
  <topicref href="nextLesson.dita"/>
  <!-- More map branches -->
</map>
```

```
**&lt;!-- firstLesson.dita --&gt;**
<task id="firstLesson">
  <title>Starting to work with scissors</title>
  <shortdesc>This lesson will teach ... </shortdesc>
  <taskbody>
    <!-- ... -->
  </taskbody>
  **&lt;!-- More first lesson topics --&gt;**
</task>
```

```
**&lt;!-- nextLesson.dita --&gt;**
<task id="nextLesson">
  <title>Advanced cutting</title>
  <shortdesc>This lesson will introduce complex shapes...</shortdesc>
  <taskbody>
    <!-- ... -->
  </taskbody>
  **&lt;!-- More second lesson topics --&gt;**
</task>
```

Content from each branch where `@chunk` attribute is specified is combined into a single result document, with a topic order and topic nesting structure that matches the original map hierarchy. Content from outside of those branches remains unchanged.

**Parent topic:**[Examples of the chunk attribute](../../archSpec/base/examples-of-chunking.md)

