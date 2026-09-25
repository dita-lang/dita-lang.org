---
author: OASIS DITA Technical Committee
---

# Metadata elements

Metadata elements are available in both topics and DITA maps. This design enables authors and information architects to use identical metadata markup in both topics and maps.

When used in maps, metadata elements are located in the `<topicmeta>` element. When used in topics, metadata elements are located in the `<prolog>` element.

In general, specifying metadata in a `<topicmeta>` element that is a child of a `<topicref>` element is equivalent to specifying it in the `<prolog>` element of the referenced topic. The value of specifying the metadata in the map is that the topic then can be reused in other maps where different metadata might apply. Many items in the `<topicmeta>` element cascade to nested `<topicref>` elements within the map. See [Reconciling topic and map metadata elements](reconciling-topic-and-map-metadata.md) for information about which elements cascade.

**Parent topic:**[DITA metadata](../../archSpec/base/dita-metadata.md)

