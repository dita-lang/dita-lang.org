---
author: OASIS DITA Technical Committee
---

# Example: How map-level metadata elements cascade to the referenced topics

In this scenario, elements located in the`<topicmeta>`element for a map cascade to the referenced topics.

The following code sample illustrates how an information architect can apply certain metadata to all the DITA topics in a map:

```
<map xml:lang="en-us">
  <title>DITA maps</title>
  <topicmeta>
    <author>Kristen James Eberlein</author>
    <copyright>
      <copyryear year="2020"/>
	<copyrholder>OASIS</copyrholder>
    </copyright>
  </topicmeta>
  <topicref href="dita-maps.dita">
    <topicref href="definition_ditamaps.dita"/>
    <topicref href="purpose_ditamaps.dita"/>
    <!-- ... -->
  </topicref>
</map>
```

The author and copyright information cascades to each of the DITA topics that are referenced in the DITA map. When the DITA map is processed to HTML5, for example, the author and copyright metadata apply to each generated HTML5 file.

**Parent topic:**[Examples of metadata cascading](../../archSpec/base/examples-of-cascading.md)

