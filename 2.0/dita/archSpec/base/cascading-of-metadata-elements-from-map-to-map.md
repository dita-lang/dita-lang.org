---
author: OASIS DITA Technical Committee
---

# Cascading of metadata elements from map to map

Elements that are contained within `<topicmeta>` elements follow the same rules for cascading from map to map as the rules that apply within a single DITA map.

For a complete list of which elements cascade within a map, see the column "Does it cascade to child `<topicref>` elements?" in the topic [Reconciling topic and map metadata elements](reconciling-topic-and-map-metadata.md).

**Note:** It is possible that a specialization might define metadata that is intended to replace rather than add to metadata in the referenced map, but DITA, by default, does not have a mechanism to specify this behavior.

**Parent topic:**[Map-to-map cascading behaviors](../../archSpec/base/map-to-map-cascading-of-metadata.md)

