---
author: OASIS DITA Technical Committee
---

# Example: Index range defined in a map

In this scenario, an index range is defined in the DITA map. Ranges defined in a DITA map can span topics.

Consider the following DITA map:

```
<map>
  <title>Food available in the Acme cafeteria</title>
  <!-- ... -->
  <topicref href="apples.dita">
    <topicmeta>
      <keywords>
        <indexterm start="acme-fruit">fruit</indexterm>
      </keywords>
    </topicmeta>
  </topicref>
  <topicref href="oranges.dita"/>
  <topicref href="pineapples.dita">
    <topicmeta>
      <keywords>
        <indexterm end="acme-fruit"/>
      </keywords>
    </topicmeta>
  </topicref>
  <!-- ... -->
</map>
```

The index range begins with the start of the first topic title in `apples.dita`, and it continues until the end of the last element in `pineapples.dita`.

**Parent topic:**[Examples of indexing](../../archSpec/base/examples-indexing.md)

