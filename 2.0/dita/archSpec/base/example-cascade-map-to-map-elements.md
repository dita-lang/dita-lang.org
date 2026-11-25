---
author: OASIS DITA Technical Committee
---

# Example: How metadata elements cascade from one map to another

In this scenario, a metadata element that is located in a map reference cascades to the topics that are referenced in a nested map.

Assume the following parent map and the referenced nested map `install.ditamap`:

```

Parent map:
<map>
  <title>Product quick start</title>
  <mapref href="install.ditamap">
    <topicmeta>
      <author>Emma Author</author>
    </topicmeta>
  </mapref>
  <!-- ... -->
</map>

install.ditamap:
<map>
  <title>Installation</title>
  <topicmeta>
    <author>Bob Author</author>
  </topicmeta>
  <topicref href="install.dita">
    <!-- ... -->
  </topicref>
</map>
```

The author information specified on the map reference cascades into the referenced map. Both Emma Author and Bob Author apply to `install.dita`, in addition to any author metadata specified within that topic.

**Parent topic:**[Examples of metadata cascading](../../archSpec/base/examples-of-cascading.md)

