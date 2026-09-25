---
author: OASIS DITA Technical Committee
---

# Example: Using `@chunk` to combine groups of topics

The `@chunk` attribute can be used on grouping elements to combine multiple source documents into one result document.

Consider the following DITA map, where `@chunk` is specified on both `<topicgroup>` and `<topichead>` elements:

```
<map>
  <title>Groups are combined</title>
  <topicgroup **chunk="combine"**>
    <topicref href="ingroup1.dita"/>
    <topicref href="ingroup2.dita"/>
  </topicgroup>
  <topichead **chunk="combine"**>
    <topicmeta>
      <navtitle>Heading for a branch</navtitle>
    </topicmeta>
    <topicref href="inhead1.dita"/>
    <topicref href="inhead2.dita"/>
  </topichead>
</map>
```

The result of evaluating the `@chunk` attribute on the `<topicgroup>` element is equivalent to a single DITA document that contains the content of both `ingroup1.dita` and `ingroup2.dita`.

The result of evaluating the `@chunk` attribute on `<topichead>` is also a single result document. In many applications, a `<topichead>` is equivalent to a single title-only topic. In that case, the chunked result is equivalent to a root topic with the title "Heading for a branch", that contains as child topics the content of both `inhead1.dita` and `inhead2.dita`. If `<topichead>` is ignorable in the current processing context, the chunked result would be equivalent to processing `<topicgroup>`: a single DITA document with the content of both `inhead1.dita` and `inhead2.dita`.

The result of evaluating the `@chunk` attribute is equivalent to the following map and topic documents:

```
<map>
  <title>Groups are combined</title>
  <topicref href="chunkgroup-1.dita"/>
  <topicref href="chunkgroup-2.dita"/>
</map>
```

The following code blocks show the content of `chunkgroup-1.dita` and `chunkgroup-2.dita`:

```
**&lt;!-- chunkgroup-1.dita --&gt;**
<dita>
  <!-- Content of ingroup1.dita -->
  <!-- Content of ingroup2.dita -->
</dita>
```

```
**&lt;!-- chunkgroup-2.dita --&gt;**
<dita>
  <topic id="head">
    <title>Heading for a branch</title>
    <!-- Content of inhead1.dita -->
    <!-- Content of inhead2.dita -->
  </topic>
</dita>

```

**Parent topic:**[Examples of the chunk attribute](../../archSpec/base/examples-of-chunking.md)

