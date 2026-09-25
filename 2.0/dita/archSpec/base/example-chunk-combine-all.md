---
author: OASIS DITA Technical Committee
---

# Example: Using `@chunk` to combine all documents into one

When a processor would typically render each topic document as an independent result document, the `@chunk` attribute can be used to render all content as a single result document.

Consider the following DITA map:

```
<map>
  <title>Lesson plan</title>
  <topicref href="background.dita">
    <!-- More topic references to background topics -->
  </topicref>
  <topicref href="goals.dita">
    <!-- More topic references to goal topics -->
  </topicref>
  <!-- More topic references -->
</map>

```

The following code samples show the content of `background.dita` and `goals.dita`:

```
**&lt;!-- Content of background.dita --&gt;**
<topic id="background">
  <title>Prerequisite concepts</title>
  <shortdesc>This information is necessary before starting ...</shortdesc>
  <body> <!-- ... --> </body>
</topic>
```

```
**&lt;!-- Content of goals.dita --&gt;**
<topic id="goals">
  <title>Lesson goals</title>
  <shortdesc>After you complete the lesson ...</shortdesc>
  <body> <!-- ... --> </body>
</topic>
```

For many systems or output formats, each document in the map is typically rendered as an independent document. For example, rendering this map as HTML5 might result in `background.html` and `goals.html`, in addition to other HTML5 files.

If the output requirements demand only a single result document, specifying `chunk="combine"` on the root map element instructs a processor to render a single document that combines all topics:

```
<map **chunk="combine"**>
  <title>Lesson plan</title>
  <topicref href="background.dita">
    <!-- More topic references to background topics -->
  </topicref>
  <topicref href="goals.dita">
    <!-- More topic references to goal topics -->
  </topicref>
  <!-- More topic references -->
</map>
```

The result of evaluating the `@chunk` attribute is equivalent to the following map and topic documents:

```
**&lt;!-- Root map --&gt;**
<map>
  <title>Lesson plan</title>
  <topicref href="combinedTopics.dita"/>
</map>
```

```
<dita>
  **&lt;!-- original content of background.dita --&gt;**
  <topic id="background">
    <title>Prerequisite concepts</title>
    <shortdesc>This information is necessary before starting</shortdesc>
    <body> <!-- ... --> </body>
      <!-- More background topics -->
  </topic>
  **&lt;!-- original content of goals.dita --&gt;**
  <topic id="goals">
    <title>Lesson goals</title>
    <shortdesc>After you complete the lesson ...</shortdesc>
    <body> <!-- ... --> </body>
    <!-- More goal topics -->
  </topic>
  <!-- More topics -->
</dita>
```

The content from all topics within the map is combined into a single result document, with a topic order and topic nesting structure that matches the original map hierarchy:

**Parent topic:**[Examples of the chunk attribute](../../archSpec/base/examples-of-chunking.md)

