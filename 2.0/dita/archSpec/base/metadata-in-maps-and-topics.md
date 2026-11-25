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

When the same metadata element or attribute is specified in both a map and a topic, map metadata will either supplement or override the topic metadata, depending on the element. The assumption is that the map author has more knowledge of the reusing context than the topic author. See [Reconciling topic and map metadata elements](reconciling-topic-and-map-metadata.md) for details on which elements override topic metadata and which elements supplement topic metadata.

**Parent topic:**[DITA metadata](../../archSpec/base/dita-metadata.md)

