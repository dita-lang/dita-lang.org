---
author: OASIS DITA Technical Committee
---

# Example: Using `@chunk` to split documents

When topics are authored or generated in a single DITA document, specifying`chunk="split"` instructs processors to render them individually when possible.

This topic contains two examples: Splitting a single topic document and splitting all topic documents.

## Splitting a single topic document

This example covers the scenario of splitting a single topic document that is referenced in a DITA map.

Consider the following DITA map, which references generated topics that document the messages that are produced by an application:

```
<map>
  <title>Message guide</title>
  <topicref href="about.dita">
    <topicref href="messages-install.dita"/>
    <topicref href="messages-run.dita"/>
    <topicref href="messages-other.dita"/>
  </topicref>
</map>
```

The following code samples show the contents of the four topic documents: `about.dita`, `messages-install.dita`, `messages-run.dita`, and `messages-other.dita`.

```
**&lt;!-- about.dita --&gt;**
<topic id="about">
  <title>About this guide</title>
  <shortdesc>Warnings or errors are displayed when ... </shortdesc>
</topic>
```

```
**&lt;!-- messages-install.dita --&gt;**
<dita>
  <topic id="INS001">
    <title>INS001: Installation failure</title>
    <!-- Explanation and recovery steps ... -->
  </topic>
  <!-- More topics that document installation messages ... -->
</dita>
```

```
**&lt;!-- messages-run.dita --&gt;**
<dita>
  <topic id="RUN001">
    <title>RUN001: Failed to initialize</title>
    <!-- Explanation and recovery steps ... -->
  </topic>
  <!-- Hundreds of message topics ... -->
  <topic id="RUN999">
    <title>RUN999: Out of memory</title>
    <!-- Explanation and recovery steps ... -->
  </topic>
</dita>
```

```
**&lt;!-- messages-other.dita --&gt;**
<topic id="othermsg">
  <title>Other messages</title>
  <shortdesc>You could also encounter ... </shortdesc>
  <topic id="OTHER001">
    <title>OTHER001: Analyzer is tired</title>
    <!-- Explanation and recovery steps ... -->
  </topic>
  <topic id="OTHER002">
    <title>OTHER002: Analyzer needs to be updated</title>
    <!-- Explanation and recovery steps ... -->
  </topic>
</topic>
```

When processed to HTML5, this map might result in four result documents: `about.html`, `messages-install.html`, `messages-run.html`, and `messages-other.html`.

With hundreds of messages in `messages-run.dita`, it might be better in some situations to render one result document for each message topic in the document. This can be done by specifying `chunk="split"` on the topic reference to `messages-run.dita`:

```
<map>
  <title>Message guide</title>
  <topicref href="about.dita">
    <topicref href="messages-install.dita"/>
    <topicref href="messages-run.dita" **chunk="split"**/>
    <topicref href="messages-other.dita"/>
  </topicref>
</map>
```

The result of evaluating `@chunk` in this case is equivalent to the following map. While `messages-run.dita` now is split into hundreds of topics, the other topics in the map are unaffected.

```
<map>
  <title>Message guide for WidgetAnalyzer</title>
  <topicref href="about.dita">
    <topicref href="messages-install.dita"/>
    **&lt;topicref href="RUN001.dita"/&gt;
    &lt;!-- Hundreds of topic references to message topics ... --&gt;
    &lt;topicref href="RUN999.dita"/&gt;**
    <topicref href="messages-other.dita"/>
  </topicref>
</map>
```

**Note:** Because the `@chunk` attribute does not cascade, even if the topic reference to `messages-run.dita` had child topic references, they would be unaffected by the `chunk="split"` operation in this example.

## Splitting all topic documents in a map

This example covers the scenario of splitting all the topic documents that are referenced in a DITA map.

Specifying `chunk="split"` on the `<map>` element sets a default for the entire map. The following change to the DITA map results in *every* referenced DITA document being split into one document per topic. The only source document that is not affected by this splitting operation is `about.dita`, because it only contains only one topic.

```
<map **chunk="split"**>
  <title>Message guide</title>
  <topicref href="about.dita">
    <topicref href="messages-install.dita"/>
    <topicref href="messages-run.dita"/>
    <topicref href="messages-other.dita"/>
  </topicref>
</map>
```



The result of evaluating `chunk="split"` specified on the map element yields the following results:

-   `about.dita` is unchanged.
-   `messages-install.dita` is split into one document for each message.
-   `messages-run.dita` is split into one document for each message, exactly as in the previous example.
-   `messages-other.dita` contains a root topic and two child topics, so it results in three documents. The hierarchy of those documents is preserved in the map.

The result of evaluating the `@chunk` attribute is the following map:

```
<map>
  <title>Message guide</title>
  <topicref href="about.dita">
    <topicref href="INS001.dita"/>
    <!-- More topic references to installation messages ... -->
    <topicref href="RUN001.dita"/>
    <!-- Hundreds of topic references to message topics ... -->
    <topicref href="RUN999.dita"/>
    <topicref href="othermsg.dita">
      <topicref href="OTHER001.dita"/>
      <topicref href="OTHER002.dita"/>
    </topicref>
  </topicref>
</map>
```

**Parent topic:**[Examples of the chunk attribute](../../archSpec/base/examples-of-chunking.md)

