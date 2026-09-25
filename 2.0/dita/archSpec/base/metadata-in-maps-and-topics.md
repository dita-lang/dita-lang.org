---
author: OASIS DITA Technical Committee
---

# Metadata in maps and topics

Metadata can be specified in both maps and topics. In most cases, metadata in the map either supplements or overrides metadata that is specified at the topic level.

Metadata can be specified by all the following mechanisms:

-   Metadata elements that are located in the DITA map
-   Specifying attributes on the `<map>` or `<topicref>` elements
-   Metadata elements or attributes that are located in the DITA topic

Metadata elements and attributes in a map might apply to an individual topic, a set of topics, or globally for the entire document. Most metadata elements authored within a `<topicmeta>` element associate metadata with the parent element and its children. Because the topics in a branch of the hierarchy typically have some common subjects or properties, this is a convenient mechanism to define metadata for a set of topics.

**Draft comment:**rodaande 8 Feb 2022  
We should have a related link from this topic to the section on cascading; this is a conceptual topic about metadata and should not repeat the processing rules, but reading this I immediately want to know \*which\* elements cascade and how that works.

**Draft comment:**robander   
TO RESOLVE 12 May 2026: Add that link

When the same metadata element or attribute is specified in both a map and a topic, by default the value in the map takes precedence. The assumption is that the map author has more knowledge of the reusing context than the topic author.

**Parent topic:**[DITA metadata](../../archSpec/base/dita-metadata.md)

